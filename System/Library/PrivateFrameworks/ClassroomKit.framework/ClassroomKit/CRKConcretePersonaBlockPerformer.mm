@interface CRKConcretePersonaBlockPerformer
- (id)currentPersona;
- (void)adoptPersonaWithUniqueString:(id)string andPerformBlock:(id)block;
@end

@implementation CRKConcretePersonaBlockPerformer

- (void)adoptPersonaWithUniqueString:(id)string andPerformBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  blockCopy = block;
  if (!stringCopy)
  {
LABEL_8:
    v13 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  currentPersona = [(CRKConcretePersonaBlockPerformer *)self currentPersona];
  v9 = currentPersona;
  if (!currentPersona)
  {
    v14 = _CRKLogASM_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CRKConcretePersonaBlockPerformer adoptPersonaWithUniqueString:v14 andPerformBlock:?];
    }

    goto LABEL_8;
  }

  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  userPersonaUniqueString2 = [v9 userPersonaUniqueString];
  v12 = [userPersonaUniqueString2 isEqual:stringCopy];

  if (v12)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v22 = 0;
  v13 = [v9 copyCurrentPersonaContextWithError:&v22];
  v18 = v22;
  if (v13)
  {
    v19 = [v9 createPersonaContextForBackgroundProcessingWithPersonaUniqueString:stringCopy];

    if (!v19)
    {
      goto LABEL_9;
    }

    v20 = _CRKLogASM_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CRKConcretePersonaBlockPerformer adoptPersonaWithUniqueString:stringCopy andPerformBlock:v20];
    }

    v18 = v19;
  }

  else
  {
    v20 = _CRKLogASM_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      verboseDescription = [v18 verboseDescription];
      [(CRKConcretePersonaBlockPerformer *)verboseDescription adoptPersonaWithUniqueString:buf andPerformBlock:v20];
    }
  }

LABEL_9:
  blockCopy[2](blockCopy);
  if (v13)
  {
    v15 = [v9 restorePersonaWithSavedPersonaContext:v13];
    if (v15)
    {
      v16 = _CRKLogASM_0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        verboseDescription2 = [v15 verboseDescription];
        [(CRKConcretePersonaBlockPerformer *)verboseDescription2 adoptPersonaWithUniqueString:v23 andPerformBlock:v16];
      }
    }
  }
}

- (id)currentPersona
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];

  return currentPersona;
}

- (void)adoptPersonaWithUniqueString:(uint64_t)a1 andPerformBlock:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_243550000, a2, OS_LOG_TYPE_ERROR, "Failed to create persona context for persona identifier %{public}@", &v2, 0xCu);
}

- (void)adoptPersonaWithUniqueString:(os_log_t)log andPerformBlock:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_243550000, log, OS_LOG_TYPE_ERROR, "Error copying current persona context: %{public}@", buf, 0xCu);
}

- (void)adoptPersonaWithUniqueString:(os_log_t)log andPerformBlock:.cold.4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_243550000, log, OS_LOG_TYPE_ERROR, "Failed to restore old persona: %{public}@", buf, 0xCu);
}

@end