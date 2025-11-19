@interface _CDPSimpleModel
- (_cdp_prediction_result)_newPredictionResultWithSeed:(unsigned int *)a3 seedLength:(unint64_t)a4 realSeedLength:(unint64_t)a5 maxTrainingEmailID:(unsigned int)a6;
- (id)_testingIndices;
- (unsigned)_newIdsForPeople:(id)a3 length:(unint64_t *)a4;
- (void)_printEmailWithID:(unint64_t)a3;
- (void)_printPrediction:(_cdp_prediction_result *)a3;
- (void)_printUserWithID:(unint64_t)a3;
- (void)_printUsers:(unsigned int *)a3 length:(unint64_t)a4;
- (void)_reallocModel;
- (void)dealloc;
- (void)loadModel:(id)a3;
- (void)makePredictionForGroup:(id)a3 clientType:(int64_t)a4 limit:(int64_t)a5 completionHandler:(id)a6;
- (void)setLambda:(float)a3 w0:(float)a4;
@end

@implementation _CDPSimpleModel

- (void)_reallocModel
{
  size = self->_size;
  self->_size = 2 * size;
  self->_timestamp = malloc_type_realloc(self->_timestamp, 16 * size, 0x100004000313F17uLL);
  self->_userIsSender = malloc_type_realloc(self->_userIsSender, self->_size, 0x100004077774924uLL);
  self->_userIsThreadInitiator = malloc_type_realloc(self->_userIsThreadInitiator, self->_size, 0x100004077774924uLL);
}

- (void)dealloc
{
  free(self->_timestamp);
  free(self->_userIsSender);
  free(self->_userIsThreadInitiator);
  if (self->_NEmail)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      free(self->_email[v3]);
      v3 = v4;
      v5 = self->_NEmail > v4++;
    }

    while (v5);
  }

  free(self->_email);
  free(self->_emailLength);
  free(self->_email2LogScore);
  if (self->_NPeople)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      free(self->_people2Email[v6]);
      v6 = v7;
      v5 = self->_NPeople > v7++;
    }

    while (v5);
  }

  free(self->_people2Email);
  free(self->_people2EmailLength);
  v8.receiver = self;
  v8.super_class = _CDPSimpleModel;
  [(_CDPSimpleModel *)&v8 dealloc];
}

- (void)loadModel:(id)a3
{
  v4 = a3;
  self->_loaded = 1;
  *&self->_NEmail = xmmword_19190EC10;
  self->_timestamp = malloc_type_calloc(0x100uLL, 8uLL, 0x100004000313F17uLL);
  self->_userIsSender = malloc_type_calloc(self->_size, 1uLL, 0x100004077774924uLL);
  self->_userIsThreadInitiator = malloc_type_calloc(self->_size, 1uLL, 0x100004077774924uLL);
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:256];
  v6 = [(_CDPSimpleModel *)self harvester];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29___CDPSimpleModel_loadModel___block_invoke;
  v12[3] = &unk_1E73684F0;
  v12[4] = self;
  v13 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29___CDPSimpleModel_loadModel___block_invoke_2;
  v9[3] = &unk_1E7368518;
  v10 = v13;
  v11 = v4;
  v9[4] = self;
  v7 = v13;
  v8 = v4;
  [v6 loadWithLimit:2500 dataPointReader:v12 completion:v9];
}

- (unsigned)_newIdsForPeople:(id)a3 length:(unint64_t *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = malloc_type_calloc([v6 count], 4uLL, 0x100004052888210uLL);
  v8 = self->_people;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [(NSArray *)v8 indexOfObject:*(*(&v19 + 1) + 8 * i) inSortedRange:0 options:[(NSArray *)v8 count] usingComparator:256, &__block_literal_global_25];
        if ([(NSArray *)v8 count]&& v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v7[v12++] = v15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  if (a4)
  {
    *a4 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setLambda:(float)a3 w0:(float)a4
{
  self->_lambda = a3;
  self->_w0 = a4;
  self->_scoresAreDirty = 1;
}

- (_cdp_prediction_result)_newPredictionResultWithSeed:(unsigned int *)a3 seedLength:(unint64_t)a4 realSeedLength:(unint64_t)a5 maxTrainingEmailID:(unsigned int)a6
{
  v87 = *MEMORY[0x1E69E9840];
  if (self->_NEmail - 2501 >= 0xFFFFFFFFFFFFF63CLL)
  {
    v79 = a5;
    if (self->_scoresAreDirty)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = 0.0;
        if (self->_userIsSender[v11])
        {
          [(_CDPSimpleModel *)self w0];
          v13 = log2f(v14);
        }

        v15 = self->_timestamp[v11];
        [(_CDPSimpleModel *)self lambda];
        v17 = v15 / (v16 * 86400.0);
        self->_email2LogScore[v11] = v13 + v17;
        v11 = v12;
      }

      while (self->_NEmail > v12++);
      self->_scoresAreDirty = 0;
    }

    bzero(v86, 0x2710uLL);
    bzero(v85, 0x2710uLL);
    v82 = &v78;
    v19 = &v78 - ((self->_NPeople * a4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v19, self->_NPeople * a4);
    v20 = [MEMORY[0x1E695E000] standardUserDefaults];
    v21 = [v20 valueForKey:@"com.apple.coreduetd.people.social.min_seed_proportion"];
    v80 = v21;
    if (v21)
    {
      [v21 floatValue];
      v23 = v22;
    }

    else
    {
      v23 = 0.5;
    }

    v24 = [v20 objectForKey:@"com.apple.coreduetd.people.social.improved_scoring"];

    v81 = v20;
    if (v24)
    {
      v83 = [v20 BOOLForKey:@"com.apple.coreduetd.people.social.improved_scoring"];
    }

    else
    {
      v83 = 1;
    }

    NEmail = self->_NEmail;
    timestamp = self->_timestamp;
    if (NEmail <= a6)
    {
      v27 = (timestamp + (((NEmail << 32) - 0x100000000) >> 29));
    }

    else
    {
      v27 = &timestamp[a6];
    }

    v28 = *v27;
    bzero(v84, 0x2710uLL);
    v29 = 1;
    if (a4)
    {
      v30 = 0;
      v31 = 0;
      people2Email = self->_people2Email;
      people2EmailLength = self->_people2EmailLength;
      do
      {
        v34 = a3[v30];
        v35 = people2EmailLength[v34];
        if (v35 >= 1)
        {
          v36 = people2Email[v34];
          v37 = &v36[v35];
          do
          {
            v38 = *v36;
            if (*v36 <= a6 && timestamp[v38] >= v28 + ((self->_lambda * -13.288) * 86400.0))
            {
              v39 = v84[v38];
              v84[v38] = v39 + 1;
              if (!v39)
              {
                v85[v31++] = v38;
              }

              if (self->_userIsSender[v38])
              {
                v40 = self->_emailLength[v38];
                if (v40)
                {
                  v41 = self->_email[v38];
                  do
                  {
                    v42 = *v41++;
                    v19[v30 + v42 * a4] = 1;
                    --v40;
                  }

                  while (v40);
                }
              }
            }

            ++v36;
          }

          while (v36 < v37);
        }

        ++v30;
      }

      while (v30 != a4);
      if (v31)
      {
        v43 = v28 / (self->_lambda * 86400.0);
        v44 = v31;
        email2LogScore = self->_email2LogScore;
        v46 = v85;
        v47 = v31;
        do
        {
          v49 = *v46++;
          v48 = v49;
          v50 = exp2f(email2LogScore[v49] - v43);
          v51 = v84[v49];
          if (v83)
          {
            v52 = (v50 * (v51 * v51)) / self->_emailLength[v48];
          }

          else
          {
            v52 = v50 * v51;
          }

          *&v86[v48] = v52;
          --v47;
        }

        while (v47);
        v29 = 0;
      }

      else
      {
        v44 = 0;
        v29 = 1;
      }
    }

    else
    {
      v44 = 0;
    }

    v53 = malloc_type_calloc(self->_NPeople, 0x10uLL, 0x1000040451B5BE8uLL);
    v6 = v53;
    NPeople = self->_NPeople;
    if (NPeople)
    {
      LODWORD(v55) = 0;
      v56 = v53;
      do
      {
        v56->var0 = v55;
        ++v56;
        v55 = (v55 + 1);
      }

      while (NPeople > v55);
    }

    if ((v29 & 1) == 0)
    {
      v57 = 0;
      emailLength = self->_emailLength;
      do
      {
        v59 = v85[v57];
        v60 = emailLength[v59];
        if (v60)
        {
          v61 = self->_email[v59];
          v62 = *&v86[v59];
          do
          {
            v63 = *v61++;
            v53[v63].var1 = v62 + v53[v63].var1;
            --v60;
          }

          while (v60);
        }

        ++v57;
      }

      while (v57 != v44);
    }

    v64 = [(_CDPSimpleModel *)self requireOutgoingInteraction];
    v65 = v81;
    if (v64)
    {
      v66 = self->_NPeople;
      if (v66)
      {
        v67 = 0;
        v68 = v23 * v79;
        do
        {
          if (a4)
          {
            v69 = 0;
            v70 = a4;
            v71 = v19;
            do
            {
              v72 = *v71++;
              v69 += v72;
              --v70;
            }

            while (v70);
            v73 = v69;
          }

          else
          {
            v73 = 0.0;
          }

          if (v68 >= v73)
          {
            v6[v67].var1 = -1.0;
          }

          ++v67;
          v19 += a4;
        }

        while (v67 != v66);
      }
    }

    if (a4 >= 1)
    {
      v74 = &a3[a4];
      do
      {
        v75 = *a3++;
        v6[v75].var1 = -1.0;
      }

      while (a3 < v74);
    }
  }

  else
  {
    v6 = 0;
  }

  v76 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)makePredictionForGroup:(id)a3 clientType:(int64_t)a4 limit:(int64_t)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v24 = 0;
  v22 = [(_CDPSimpleModel *)self _newIdsForPeople:v9 length:&v24];
  v23 = -[_CDPSimpleModel _newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:](self, "_newPredictionResultWithSeed:seedLength:realSeedLength:maxTrainingEmailID:", v22, v24, [v9 count], LODWORD(self->_NEmail));
  if (self->_NPeople >= a5)
  {
    NPeople = a5;
  }

  else
  {
    NPeople = self->_NPeople;
  }

  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:NPeople];
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:NPeople];
  v15 = self->_NPeople;
  if (v15 >= a5)
  {
    v15 = a5;
  }

  if (v15)
  {
    v16 = 0;
    p_var1 = &v23->var1;
    do
    {
      LODWORD(v14) = p_var1->var0;
      v18 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
      [v12 addObject:v18];

      v19 = [(NSArray *)self->_people objectAtIndexedSubscript:p_var1[-1].var3];
      [v13 addObject:v19];

      ++v16;
      v20 = self->_NPeople;
      if (v20 >= a5)
      {
        v20 = a5;
      }

      ++p_var1;
    }

    while (v20 > v16);
  }

  v21 = [[_CDPPredictionResult alloc] initWithMembers:v13 andScores:v12];
  v10[2](v10, v21);

  free(v22);
  free(v23);
}

- (id)_testingIndices
{
  p_testingIndices = &self->_testingIndices;
  testingIndices = self->_testingIndices;
  if (testingIndices)
  {
    v4 = testingIndices;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD50] indexSet];
    NEmail = self->_NEmail;
    if (NEmail > NEmail / 3)
    {
      v7 = NEmail / 3;
      do
      {
        if (self->_userIsSender[v7] && self->_userIsThreadInitiator[v7] && self->_emailLength[v7] - 3 <= 7)
        {
          [(NSIndexSet *)v4 addIndex:v7];
          NEmail = self->_NEmail;
        }

        ++v7;
      }

      while (NEmail > v7);
    }

    objc_storeStrong(p_testingIndices, v4);
  }

  return v4;
}

- (void)_printEmailWithID:(unint64_t)a3
{
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateFormat:@"yyyy-MM-dd"];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:self->_timestamp[a3]];
  v6 = [v7 stringFromDate:v5];
  printf("%s ", [v6 UTF8String]);

  [(_CDPSimpleModel *)self _printUsers:self->_email[a3] length:self->_emailLength[a3]];
}

- (void)_printUsers:(unsigned int *)a3 length:(unint64_t)a4
{
  if (a4 >= 1)
  {
    v5 = a3;
    v7 = &a3[a4];
    do
    {
      v8 = *v5++;
      v9 = [(NSArray *)self->_people objectAtIndexedSubscript:v8];
      printf("%s ", [v9 UTF8String]);
    }

    while (v5 < v7);
  }

  putchar(10);
}

- (void)_printUserWithID:(unint64_t)a3
{
  v4 = [(NSArray *)self->_people objectAtIndexedSubscript:a3];
  v3 = v4;
  puts([v4 UTF8String]);
}

- (void)_printPrediction:(_cdp_prediction_result *)a3
{
  v5 = malloc_type_calloc(self->_NPeople, 0x10uLL, 0x1000040451B5BE8uLL);
  memcpy(v5, a3, 16 * self->_NPeople);
  qsort_b(v5, self->_NPeople, 0x10uLL, &__block_literal_global_38);
  for (i = 0; i != 80; i += 16)
  {
    v7 = [(NSArray *)self->_people objectAtIndexedSubscript:*&v5[i]];
    printf("%s %g\n", [v7 UTF8String], *&v5[i + 4]);
  }

  free(v5);
}

@end