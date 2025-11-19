@interface DYInOrderInstructionFilesVisitor
- (BOOL)_openFilenames:(id)a3 store:(id)a4 filesArray:(id)a5;
- (BOOL)_openFiles:(id)a3;
- (void)_closeFiles;
- (void)_performVisit:(id)a3;
- (void)visitCaptureStore:(id)a3;
@end

@implementation DYInOrderInstructionFilesVisitor

- (BOOL)_openFilenames:(id)a3 store:(id)a4 filesArray:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(a3);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      v16 = 0;
      v13 = [a4 openFileWithFilename:v12 error:&v16];
      if (!v13)
      {
        break;
      }

      [a5 addObject:v13];
      if (v9 == ++v11)
      {
        v9 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v13) = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_openFiles:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "filenamesWithPrefix:error:", *MEMORY[0x277D0B1A8], 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  v6 = *MEMORY[0x277D0B1A0];
  [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "filenamesWithPrefix:error:", *MEMORY[0x277D0B1A0], 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  v7 = *MEMORY[0x277D0B1B0];
  [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "filenamesWithPrefix:error:", *MEMORY[0x277D0B1B0], 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  v8 = *MEMORY[0x277D0B180];
  [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "filenamesWithPrefix:error:", *MEMORY[0x277D0B180], 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  if ([(DYCaptureVisitor *)self visitUnusedResoures])
  {
    [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "filenamesWithPrefix:error:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", *MEMORY[0x277D0B1C0], v8, context), 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  }

  v9 = objc_opt_new();
  v10 = [(DYInOrderInstructionFilesVisitor *)self _openFilenames:v5 store:a3 filesArray:v9];
  self->_initialPhaseFiles = v9;

  if (!v10)
  {
    goto LABEL_13;
  }

  if (self->_unsorted)
  {
    v11 = [a3 filenamesWithPrefix:*MEMORY[0x277D0B1B8] error:0];
    if ([v11 count])
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277D0B190];
  }

  else
  {
    v12 = MEMORY[0x277D0B170];
  }

  v11 = [a3 filenamesWithPrefix:*v12 error:0];
LABEL_9:
  if ([v11 count] != 1)
  {
    v19 = *MEMORY[0x277D0B240];
    [v11 count];
    DYLog();
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA050];
    v30 = *MEMORY[0x277CCA450];
    v22 = v30;
    v31[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"Capture file names: %@", v11];
    v23 = [v20 errorWithDomain:v21 code:256 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v31, &v30, 1)}];
    v24 = *MEMORY[0x277CCA7E8];
    v28[0] = v22;
    v28[1] = v24;
    v29[0] = @"The gputrace is invalid because it contains multiple capture archives.";
    v29[1] = v23;
    -[DYCaptureVisitor setVisitCaptureArchiveError:](self, "setVisitCaptureArchiveError:", [MEMORY[0x277CCA9B8] errorWithDomain:v21 code:256 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v29, v28, 2)}]);
    goto LABEL_13;
  }

  v13 = objc_opt_new();
  v14 = -[DYInOrderInstructionFilesVisitor _openFilenames:store:filesArray:](self, "_openFilenames:store:filesArray:", [v11 sortedArrayUsingSelector:sel_dy_numericCompare_], a3, v13);
  self->_captureFiles = v13;
  if (!v14)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v15 = objc_opt_new();
  v16 = *MEMORY[0x277D0B178];
  [v15 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "filenamesWithPrefix:error:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", *MEMORY[0x277D0B178], v6), 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  [v15 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "filenamesWithPrefix:error:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", v16, v7), 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  [v15 addObjectsFromArray:{objc_msgSend(objc_msgSend(a3, "filenamesWithPrefix:error:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@-%@", v16, v8), 0), "sortedArrayUsingSelector:", sel_dy_numericCompare_)}];
  v17 = objc_opt_new();
  v18 = [(DYInOrderInstructionFilesVisitor *)self _openFilenames:v15 store:a3 filesArray:v17];
  self->_deltaFiles = v17;

LABEL_14:
  objc_autoreleasePoolPop(context);
  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)_closeFiles
{
  self->_initialPhaseFiles = 0;

  self->_deltaFiles = 0;
  self->_captureFiles = 0;
}

- (void)visitCaptureStore:(id)a3
{
  if ([(DYInOrderInstructionFilesVisitor *)self _openFiles:?])
  {
    [(DYInOrderInstructionFilesVisitor *)self _performVisit:a3];
  }

  [(DYInOrderInstructionFilesVisitor *)self _closeFiles];
}

- (void)_performVisit:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = [(DYInOrderInstructionFilesVisitor *)self performPreVisitActions];
  if (!self->super._abort)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    initialPhaseFiles = self->_initialPhaseFiles;
    v8 = OUTLINED_FUNCTION_0_0(v5, v6, &v41, v47);
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(initialPhaseFiles);
        }

        v12 = [*(*(&v41 + 1) + 8 * v11) acceptCaptureVisitor:self];
        if (self->super._abort)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = OUTLINED_FUNCTION_0_0(v12, v13, &v41, v47);
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v14 = [(DYInOrderInstructionFilesVisitor *)self performPreCaptureVisitActions];
      if (!self->super._abort)
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        captureFiles = self->_captureFiles;
        v17 = OUTLINED_FUNCTION_0_0(v14, v15, &v37, v46);
        if (v17)
        {
          v18 = v17;
          v19 = *v38;
LABEL_13:
          v20 = 0;
          while (1)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(captureFiles);
            }

            v21 = [*(*(&v37 + 1) + 8 * v20) acceptCaptureVisitor:self];
            if (self->super._abort)
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = OUTLINED_FUNCTION_0_0(v21, v22, &v37, v46);
              if (v18)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
LABEL_19:
          v23 = [(DYInOrderInstructionFilesVisitor *)self performPostCaptureVisitActions];
          if (!self->super._abort && self->_visitDeltaFiles)
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            deltaFiles = self->_deltaFiles;
            v26 = OUTLINED_FUNCTION_0_0(v23, v24, &v33, v45);
            if (v26)
            {
              v27 = v26;
              v28 = *v34;
LABEL_23:
              v29 = 0;
              while (1)
              {
                if (*v34 != v28)
                {
                  objc_enumerationMutation(deltaFiles);
                }

                v30 = [*(*(&v33 + 1) + 8 * v29) acceptCaptureVisitor:self];
                if (self->super._abort)
                {
                  break;
                }

                if (v27 == ++v29)
                {
                  v27 = OUTLINED_FUNCTION_0_0(v30, v31, &v33, v45);
                  if (v27)
                  {
                    goto LABEL_23;
                  }

                  break;
                }
              }
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  v32 = *MEMORY[0x277D85DE8];
}

@end