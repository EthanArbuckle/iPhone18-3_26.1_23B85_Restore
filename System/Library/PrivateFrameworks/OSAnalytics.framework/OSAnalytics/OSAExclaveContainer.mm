@interface OSAExclaveContainer
- (OSAExclaveContainer)init;
- (id)getFramesForThread:(id)thread usingCatalog:(id)catalog;
- (kcdata_iter)parseKCdata:(kcdata_iter)cdata;
- (void)appendNotesTo:(id)to;
- (void)setThreadId:(id)id withScId:(id)scId;
@end

@implementation OSAExclaveContainer

- (OSAExclaveContainer)init
{
  v16.receiver = self;
  v16.super_class = OSAExclaveContainer;
  v2 = [(OSAExclaveContainer *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    addressSpaces = v2->_addressSpaces;
    v2->_addressSpaces = v3;

    v5 = objc_opt_new();
    layouts = v2->_layouts;
    v2->_layouts = v5;

    v7 = objc_opt_new();
    threads = v2->_threads;
    v2->_threads = v7;

    v9 = objc_opt_new();
    threadIdToScId = v2->_threadIdToScId;
    v2->_threadIdToScId = v9;

    v11 = objc_opt_new();
    notes = v2->_notes;
    v2->_notes = v11;

    v2->_isExclaveValid = 1;
    v13 = objc_opt_new();
    sharedCaches = v2->_sharedCaches;
    v2->_sharedCaches = v13;
  }

  return v2;
}

- (void)setThreadId:(id)id withScId:(id)scId
{
  scIdCopy = scId;
  idCopy = id;
  threadIdToScId = [(OSAExclaveContainer *)self threadIdToScId];
  [threadIdToScId setObject:scIdCopy forKeyedSubscript:idCopy];
}

- (id)getFramesForThread:(id)thread usingCatalog:(id)catalog
{
  v63 = *MEMORY[0x1E69E9840];
  threadCopy = thread;
  catalogCopy = catalog;
  if ([(OSAExclaveContainer *)self isExclaveValid])
  {
    threadIdToScId = [(OSAExclaveContainer *)self threadIdToScId];
    v9 = [threadIdToScId objectForKeyedSubscript:threadCopy];

    if (v9)
    {
      threads = [(OSAExclaveContainer *)self threads];
      v11 = [threads objectForKeyedSubscript:v9];

      if (v11)
      {
        v53 = v9;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v12 = self->_sharedCaches;
        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v59;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v59 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [catalogCopy addExclaveSharedCache:*(*(&v58 + 1) + 8 * i)];
            }

            v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v58 objects:v62 count:16];
          }

          while (v14);
        }

        array = [MEMORY[0x1E695DF70] array];
        stackEntries = [v11 stackEntries];
        v19 = [stackEntries count];

        if (v19)
        {
          v20 = 0;
          v54 = threadCopy;
          selfCopy = self;
          v57 = v11;
          do
          {
            stackEntries2 = [v11 stackEntries];
            stackEntries3 = [v11 stackEntries];
            v23 = [stackEntries2 objectAtIndexedSubscript:{objc_msgSend(stackEntries3, "count") + ~v20}];

            addressSpaces = [(OSAExclaveContainer *)self addressSpaces];
            addressSpaceId = [v23 addressSpaceId];
            v26 = [addressSpaces objectForKeyedSubscript:addressSpaceId];

            if (v26)
            {
              layouts = [(OSAExclaveContainer *)self layouts];
              layoutId = [v26 layoutId];
              notes2 = [layouts objectForKeyedSubscript:layoutId];

              if (notes2)
              {
                frames = [v23 frames];
                v31 = [frames count];

                if (v31)
                {
                  v55 = v26;
                  v32 = 0;
                  do
                  {
                    frames2 = [v23 frames];
                    v34 = [frames2 objectAtIndexedSubscript:v32];
                    unsignedLongLongValue = [v34 unsignedLongLongValue];
                    segments = [notes2 segments];
                    v37 = [catalogCopy searchFrame:unsignedLongLongValue in:segments result:0];
                    [array addObject:v37];

                    ++v32;
                    frames3 = [v23 frames];
                    v39 = [frames3 count];
                  }

                  while (v39 > v32);
                  threadCopy = v54;
                  v26 = v55;
                  self = selfCopy;
                }

                goto LABEL_22;
              }

              notes = [(OSAExclaveContainer *)self notes];
              v43 = threadCopy;
              v44 = v26;
              v45 = MEMORY[0x1E696AEC0];
              layoutId2 = [v44 layoutId];
              v46 = [v45 stringWithFormat:@"Thread:%@ Layout info does not exist for layout id %@", v43, layoutId2];;
              [notes addObject:v46];

              v26 = v44;
              threadCopy = v43;
              self = selfCopy;
            }

            else
            {
              notes2 = [(OSAExclaveContainer *)self notes];
              v40 = MEMORY[0x1E696AEC0];
              notes = [v23 addressSpaceId];
              layoutId2 = [v40 stringWithFormat:@"Thread:%@ Address space info does exist for asid %@", threadCopy, notes];;
              [notes2 addObject:layoutId2];
            }

LABEL_22:
            ++v20;
            v11 = v57;
            stackEntries4 = [v57 stackEntries];
            v48 = [stackEntries4 count];
          }

          while (v48 > v20);
        }

        [catalogCopy clearExclaveSharedCaches];
        v9 = v53;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [OSAExclaveContainer getFramesForThread:v9 usingCatalog:?];
        }

        array = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [OSAExclaveContainer getFramesForThread:threadCopy usingCatalog:?];
      }

      array = 0;
    }
  }

  else
  {
    notes3 = [(OSAExclaveContainer *)self notes];
    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Omitted invalid exclave data for thread %llu", objc_msgSend(threadCopy, "unsignedLongLongValue")];
    [notes3 addObject:v50];

    array = 0;
  }

  v51 = *MEMORY[0x1E69E9840];

  return array;
}

- (kcdata_iter)parseKCdata:(kcdata_iter)cdata
{
  end = cdata.end;
  item = cdata.item;
  array = [MEMORY[0x1E695DF70] array];
  v7 = array;
  v8 = item + 1;
  v9 = item;
  if (&item[1] <= end)
  {
    v10 = item;
    while (1)
    {
      v9 = (v8 + v10->size);
      if (v9 > end)
      {
        break;
      }

      if (v10->type == 19)
      {
        if (v10[1].type == 2377)
        {
          goto LABEL_12;
        }
      }

      else if (v10->type == -242132755)
      {
        goto LABEL_122;
      }

      v8 = v9 + 1;
      v10 = v9;
      if (&v9[1] > end)
      {
        goto LABEL_11;
      }
    }

    v9 = v10;
  }

LABEL_11:
  v10 = v9;
  if (v9->type != -242132755)
  {
LABEL_12:
    v11 = v10 + 1;
    if (&v10[1] <= end)
    {
      v93 = item;
      v12 = 0;
      selfCopy = self;
      v13 = 0x1E696A000uLL;
      v91 = end;
      v92 = array;
      while (1)
      {
        size = v10->size;
        if ((v11 + size) > end || v12)
        {
LABEL_121:
          item = v93;
          break;
        }

        v12 = 0;
        if ((v10->type & 0xFFFFFFF0) == 0x20)
        {
          type = 17;
        }

        else
        {
          type = v10->type;
        }

        if (type > 2380)
        {
          if (type > 2384)
          {
            if (type == 2385)
            {
              v45 = [v7 top];
              if (!v45 || (v46 = v45, [v45 type] != 2383))
              {
                [OSAExclaveContainer parseKCdata:];
              }

              v95 = v46;
              data = [v46 data];
              v21 = [data objectForKeyedSubscript:&unk_1F241EB48];

              v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v10[1]];
              [v21 setName:v23];
              goto LABEL_78;
            }

            if (type == 2387)
            {
              v33 = [v7 top];
              if (!v33 || (v34 = v33, [v33 type] != 2386))
              {
                [OSAExclaveContainer parseKCdata:];
              }

              v95 = v34;
              data2 = [v34 data];
              v21 = [data2 objectForKeyedSubscript:&unk_1F241EB60];

              v36 = [*(v13 + 3480) numberWithUnsignedLongLong:*&v10[1].type];
              [v21 setLayoutId:v36];

              if ((v10[1].flags & 4) != 0)
              {
                v23 = [*(v13 + 3480) numberWithUnsignedInt:v10[2].type];
                [v21 setSharedCacheIndex:v23];
                goto LABEL_78;
              }

              goto LABEL_79;
            }
          }

          else
          {
            if (type == 2381)
            {
              v39 = [v7 top];
              if (!v39 || (v40 = v39, [v39 type] != 2380))
              {
                [OSAExclaveContainer parseKCdata:];
              }

              v95 = v40;
              data3 = [v40 data];
              v21 = [data3 objectForKeyedSubscript:&unk_1F241EB78];

              v23 = [*(v13 + 3480) numberWithUnsignedLongLong:*&v10[1].type];
              [v21 setAddressSpaceId:v23];
              goto LABEL_78;
            }

            if (type == 2384)
            {
              v26 = [v7 top];
              if (!v26 || (v27 = v26, [v26 type] != 2383))
              {
                [OSAExclaveContainer parseKCdata:];
              }

              v95 = v27;
              data4 = [v27 data];
              v21 = [data4 objectForKeyedSubscript:&unk_1F241EB48];

              v29 = [*(v13 + 3480) numberWithUnsignedLongLong:*&v10[1].type];
              [v21 setAddressSpaceId:v29];

              v23 = [*(v13 + 3480) numberWithUnsignedLongLong:*&v10[2].type];
              [v21 setLayoutId:v23];
              goto LABEL_78;
            }
          }
        }

        else if (type > 19)
        {
          if (type == 20)
          {
            v42 = [v7 pop];
            flags = v10->flags;
            if (flags != [v42 tag])
            {
              [OSAExclaveContainer parseKCdata:];
            }

            type = [v42 type];
            v12 = type == 2377;
            v95 = v42;
            if (type != 2377)
            {
              type2 = [v42 type];
              if (type2 == 2380)
              {
                v52 = v11;
                v53 = [v7 top];
                v54 = v42;
                v21 = v53;
                data5 = [v54 data];
                threads = [data5 objectForKeyedSubscript:&unk_1F241EB78];

                data6 = [v21 data];
                v58 = [data6 objectForKeyedSubscript:&unk_1F241EB30];

                [v58 addStackEntries:threads];
              }

              else
              {
                if ([v42 type] == 2378)
                {
                  data7 = [v42 data];
                  v21 = [data7 objectForKeyedSubscript:&unk_1F241EB30];

                  schedulingContextId = [v21 schedulingContextId];

                  if (!schedulingContextId)
                  {
                    goto LABEL_80;
                  }

                  v52 = v11;
                  threads = [(OSAExclaveContainer *)selfCopy threads];
                  schedulingContextId2 = [v21 schedulingContextId];
                }

                else if ([v42 type] == 2383)
                {
                  data8 = [v42 data];
                  v21 = [data8 objectForKeyedSubscript:&unk_1F241EB48];

                  addressSpaceId = [v21 addressSpaceId];

                  if (!addressSpaceId)
                  {
                    goto LABEL_80;
                  }

                  v52 = v11;
                  threads = [(OSAExclaveContainer *)selfCopy addressSpaces];
                  schedulingContextId2 = [v21 addressSpaceId];
                }

                else
                {
                  if ([v42 type] != 2386)
                  {
                    goto LABEL_81;
                  }

                  data9 = [v42 data];
                  v21 = [data9 objectForKeyedSubscript:&unk_1F241EB60];

                  layoutId = [v21 layoutId];

                  if (!layoutId)
                  {
                    goto LABEL_80;
                  }

                  v52 = v11;
                  threads = [(OSAExclaveContainer *)selfCopy layouts];
                  schedulingContextId2 = [v21 layoutId];
                }

                v58 = schedulingContextId2;
                [threads setObject:v21 forKeyedSubscript:schedulingContextId2];
              }

              v7 = v92;
              v11 = v52;
              goto LABEL_80;
            }

            v93 = v10;
LABEL_81:

            goto LABEL_82;
          }

          if (type == 2379)
          {
            v30 = [v7 top];
            if (!v30 || (v31 = v30, [v30 type] != 2378))
            {
              [OSAExclaveContainer parseKCdata:];
            }

            v95 = v31;
            data10 = [v31 data];
            v21 = [data10 objectForKeyedSubscript:&unk_1F241EB30];

            v23 = [*(v13 + 3480) numberWithUnsignedLongLong:*&v10[1].type];
            [v21 setSchedulingContextId:v23];
            goto LABEL_78;
          }
        }

        else
        {
          if (type == 17)
          {
            v37 = v10->flags;
            if (v10->type != 17)
            {
              if (!v37)
              {
                goto LABEL_92;
              }

              v38 = (size - (v10->type & 0xF)) / v37;
              goto LABEL_101;
            }

            if (SHIDWORD(v37) <= 2313)
            {
              if (SHIDWORD(v37) <= 2073)
              {
                if (HIDWORD(v37) == 48)
                {
                  v38 = 20;
                }

                else
                {
                  if (HIDWORD(v37) != 49)
                  {
                    goto LABEL_92;
                  }

                  v38 = 24;
                }

                goto LABEL_101;
              }

              if (HIDWORD(v37) != 2074)
              {
                if (HIDWORD(v37) != 2311)
                {
                  goto LABEL_92;
                }

                v38 = 4;
LABEL_101:
                if ([v7 count])
                {
                  v72 = [v7 top];
                }

                else
                {
                  v72 = 0;
                }

                v95 = v72;
                if (HIDWORD(v37) == 2388)
                {
                  if (!v72 || [v72 type] != 2386)
                  {
                    [OSAExclaveContainer parseKCdata:];
                  }

                  v90 = v11;
                  data11 = [v72 data];
                  v21 = [data11 objectForKeyedSubscript:&unk_1F241EB60];

                  v80 = v37;
                  if (v37)
                  {
                    v81 = 0;
                    v82 = 0;
                    v83 = MEMORY[0x1E69E9820];
                    v84 = v80;
                    do
                    {
                      v96[0] = v83;
                      v96[1] = 3221225472;
                      v97 = __35__OSAExclaveContainer_parseKCdata___block_invoke_92;
                      v98 = &unk_1E7A27D70;
                      v99 = v21;
                      v100 = selfCopy;
                      v97(v96, v82, &v10[1] + v81);

                      ++v82;
                      v81 += v38;
                    }

                    while (v84 != v82);
                  }

                  segments = [v21 segments];
                  [segments sortByAddressAndSetInferredSizes];

                  [(NSMutableArray *)selfCopy->_sharedCaches sortByAddressAndSetInferredSizes];
                  v12 = 0;
                }

                else
                {
                  if (HIDWORD(v37) != 2382)
                  {
                    v12 = 0;
                    v13 = 0x1E696A000;
                    goto LABEL_81;
                  }

                  if (!v72 || [v72 type] != 2380)
                  {
                    [OSAExclaveContainer parseKCdata:];
                  }

                  data12 = [v72 data];
                  v88 = [data12 objectForKeyedSubscript:&unk_1F241EB78];

                  if (!v37)
                  {
                    v12 = 0;
                    v13 = 0x1E696A000;
                    v21 = v88;
                    goto LABEL_80;
                  }

                  v90 = v11;
                  v74 = v37;
                  v75 = 0;
                  v76 = 0;
                  v94 = MEMORY[0x1E69E9820];
                  v77 = v74;
                  do
                  {
                    v101[0] = v94;
                    v101[1] = 3221225472;
                    v102 = __35__OSAExclaveContainer_parseKCdata___block_invoke;
                    v103 = &unk_1E7A27D48;
                    v78 = v88;
                    v104 = v78;
                    v102(v101, v76, (&v10[1].type + v75));

                    ++v76;
                    v75 += v38;
                  }

                  while (v77 != v76);
                  v12 = 0;
                  v21 = v78;
                }

                end = v91;
                v7 = v92;
                v11 = v90;
                v13 = 0x1E696A000;
                goto LABEL_80;
              }
            }

            else if (SHIDWORD(v37) <= 2315)
            {
              if (HIDWORD(v37) != 2314)
              {
                goto LABEL_91;
              }
            }

            else if (HIDWORD(v37) != 2316)
            {
              if (HIDWORD(v37) != 2317)
              {
                if (HIDWORD(v37) == 2369)
                {
                  v38 = 48;
                  goto LABEL_101;
                }

LABEL_92:
                v38 = 0;
                goto LABEL_101;
              }

LABEL_91:
              v38 = 16;
              goto LABEL_101;
            }

            v38 = 8;
            goto LABEL_101;
          }

          if (type == 19)
          {
            v16 = [[KCContainer alloc] initWithKCData:v10, end];
            [v7 push:v16];

            v12 = 0;
            v17 = v10[1].type;
            if (v17 > 2382)
            {
              v13 = 0x1E696A000;
              if (v17 == 2383)
              {
                v65 = [v7 top];
                v66 = objc_alloc_init(ExclaveAddressSpace);
                v95 = v65;
                v67 = v65;
                v21 = v66;
                data13 = [v67 data];
                v23 = data13;
                v24 = v21;
                v25 = &unk_1F241EB48;
LABEL_77:
                [data13 setObject:v24 forKeyedSubscript:v25];
LABEL_78:

LABEL_79:
                v12 = 0;
LABEL_80:

                goto LABEL_81;
              }

              if (v17 == 2386)
              {
                v48 = [v7 top];
                v49 = objc_alloc_init(ExclaveLayout);
                v95 = v48;
                v50 = v48;
                v21 = v49;
                data13 = [v50 data];
                v23 = data13;
                v24 = v21;
                v25 = &unk_1F241EB60;
                goto LABEL_77;
              }
            }

            else
            {
              v13 = 0x1E696A000;
              if (v17 == 2378)
              {
                v62 = [v7 top];
                v63 = objc_alloc_init(ExclaveThread);
                v95 = v62;
                v64 = v62;
                v21 = v63;
                data13 = [v64 data];
                v23 = data13;
                v24 = v21;
                v25 = &unk_1F241EB30;
                goto LABEL_77;
              }

              if (v17 == 2380)
              {
                v18 = [v7 top];
                v19 = objc_alloc_init(ExclaveStackEntry);
                v95 = v18;
                v20 = v18;
                v21 = v19;
                data13 = [v20 data];
                v23 = data13;
                v24 = v21;
                v25 = &unk_1F241EB78;
                goto LABEL_77;
              }
            }
          }
        }

LABEL_82:
        v10 = (v11 + v10->size);
        v11 = v10 + 1;
        if (&v10[1] > end)
        {
          goto LABEL_121;
        }
      }
    }
  }

LABEL_122:

  v86 = item;
  v87 = end;
  result.end = v87;
  result.item = v86;
  return result;
}

void __35__OSAExclaveContainer_parseKCdata___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*a3];
  [v3 addFrames:v4];
}

void __35__OSAExclaveContainer_parseKCdata___block_invoke_92(uint64_t a1, int a2, uint64_t a3)
{
  v6 = [*(a1 + 32) sharedCacheIndex];
  if (v6 && (v7 = v6, [*(a1 + 32) sharedCacheIndex], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "intValue"), v8, v7, v9 == a2))
  {
    v10 = *(*(a1 + 40) + 48);
    v11 = *(a3 + 16);

    [v10 addImage:a3 address:v11 size:0];
  }

  else
  {
    v12 = [*(a1 + 32) segments];
    [v12 addImage:a3 address:*(a3 + 16) size:0];
  }
}

- (void)appendNotesTo:(id)to
{
  toCopy = to;
  notes = [(OSAExclaveContainer *)self notes];
  [toCopy addObjectsFromArray:notes];
}

- (void)getFramesForThread:(uint64_t)a1 usingCatalog:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exclave data not present for SCID %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)getFramesForThread:(void *)a1 usingCatalog:.cold.2(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = [a1 unsignedLongLongValue];
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exclave data not present for thread %llu", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end