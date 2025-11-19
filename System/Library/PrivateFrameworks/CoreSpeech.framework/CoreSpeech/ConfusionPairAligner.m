@interface ConfusionPairAligner
- (ConfusionPairAligner)initWithUttId:(id)a3 recognizedText:(id)a4 correctedText:(id)a5 errorType:(int64_t)a6 editMethod:(int64_t)a7;
@end

@implementation ConfusionPairAligner

- (ConfusionPairAligner)initWithUttId:(id)a3 recognizedText:(id)a4 correctedText:(id)a5 errorType:(int64_t)a6 editMethod:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v56.receiver = self;
  v56.super_class = ConfusionPairAligner;
  v15 = [(ConfusionPairAligner *)&v56 init];
  if (!v15)
  {
LABEL_31:
    v17 = v15;
    goto LABEL_33;
  }

  v16 = objc_alloc_init(_EAREditDistance);
  v17 = v16;
  if (v16)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_10000530C;
    v54 = sub_10000531C;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_10000530C;
    v48 = sub_10000531C;
    v49 = 0;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100005324;
    v43[3] = &unk_100038920;
    v43[4] = &v50;
    v43[5] = &v44;
    [(ConfusionPairAligner *)v16 editAlignmentWithRefText:v14 hypText:v13 placeholderSymbol:@"~" caseInsensitive:0 removeWordSense:1 completion:v43];
    v18 = v51[5];
    if (!v18 || !v45[5] || (v19 = [v18 count], v19 != objc_msgSend(v45[5], "count")))
    {
      _Block_object_dispose(&v44, 8);

      _Block_object_dispose(&v50, 8);
      v17 = 0;
      goto LABEL_33;
    }

    v20 = objc_alloc_init(NSMutableArray);
    v39 = a7;
    v40 = a6;
    confusionPairs = v15->_confusionPairs;
    v15->_confusionPairs = v20;

    v22 = [v45[5] count];
    if (v22 >= 1)
    {
      v42 = 0;
      v23 = 0;
      while (1)
      {
        v24 = v23;
        while (1)
        {
          v25 = [v45[5] objectAtIndexedSubscript:{v24, v36}];
          v26 = [v51[5] objectAtIndexedSubscript:v24];
          v27 = [v25 isEqualToString:v26];

          if ((v27 & 1) == 0)
          {
            break;
          }

          if (++v24 >= v22)
          {
            goto LABEL_30;
          }
        }

        v41 = v12;
        v28 = [[ConfusionPair alloc] initWithUttId:v12];
        if (v24 >= v22)
        {
          v37 = 0;
          v23 = v24;
        }

        else
        {
          v23 = v24;
          while (1)
          {
            v29 = [v45[5] objectAtIndexedSubscript:v23];
            v30 = [v51[5] objectAtIndexedSubscript:v23];
            if ([v29 isEqualToString:v30])
            {
              break;
            }

            [(ConfusionPair *)v28 addRecognizedToken:v29 correctedToken:v30];

            if (++v23 >= v22)
            {
              v37 = 0;
              v23 = v22;
              goto LABEL_19;
            }
          }

          v37 = 1;
        }

LABEL_19:
        v38 = [(ConfusionPair *)v28 placeholderCount];
        v31 = [(ConfusionPair *)v28 recognizedTokens];
        if ([v31 count])
        {
          break;
        }

        v32 = [(ConfusionPair *)v28 correctedTokens];
        v36 = [v32 count];

        if (v36)
        {
          goto LABEL_22;
        }

LABEL_28:

        v12 = v41;
        if (v23 < v22)
        {
          v42 += v38;
          if (v24 < v22)
          {
            continue;
          }
        }

        goto LABEL_30;
      }

LABEL_22:
      if (v24 < 1)
      {
        v34 = &stru_100039238;
        v33 = &stru_100039238;
      }

      else
      {
        v33 = [v45[5] objectAtIndexedSubscript:v24 - 1];
        v34 = &stru_100039238;
      }

      if (v37)
      {
        v34 = [v51[5] objectAtIndexedSubscript:v23];
      }

      [(ConfusionPair *)v28 setIndex:v24 - v42, v36];
      [(ConfusionPair *)v28 setLeftContext:v33];
      [(ConfusionPair *)v28 setRightContext:v34];
      [(ConfusionPair *)v28 setErrorType:v40];
      [(ConfusionPair *)v28 setEditMethod:v39];
      [(NSMutableArray *)v15->_confusionPairs addObject:v28];

      goto LABEL_28;
    }

LABEL_30:
    _Block_object_dispose(&v44, 8);

    _Block_object_dispose(&v50, 8);
    goto LABEL_31;
  }

LABEL_33:

  return v17;
}

@end