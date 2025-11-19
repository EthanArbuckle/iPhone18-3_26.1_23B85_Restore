@interface SGQuickResponse
- (SGQuickResponse)initWithProactiveTrigger:(id)a3 isConfident:(BOOL)a4;
- (SGQuickResponse)initWithText:(id)a3 lang:(id)a4 replyTextId:(unint64_t)a5 styleGroupId:(unint64_t)a6 semanticClassId:(unint64_t)a7 modelId:(unint64_t)a8 categoryId:(unint64_t)a9 isCustomResponse:(BOOL)a10 isRobotResponse:(BOOL)a11 isConfident:(BOOL)a12;
- (SGQuickResponse)initWithText:(id)a3 lang:(id)a4 replyTextId:(unint64_t)a5 styleGroupId:(unint64_t)a6 semanticClassId:(unint64_t)a7 modelId:(unint64_t)a8 categoryId:(unint64_t)a9 isCustomResponse:(BOOL)a10 isRobotResponse:(BOOL)a11 isConfident:(BOOL)a12 proactiveTrigger:(id)a13;
- (id)description;
@end

@implementation SGQuickResponse

- (id)description
{
  proactiveTrigger = self->_proactiveTrigger;
  if (proactiveTrigger)
  {
    v4 = [(NSDictionary *)proactiveTrigger description];
  }

  else
  {
    v4 = self->_text;
  }

  return v4;
}

- (SGQuickResponse)initWithText:(id)a3 lang:(id)a4 replyTextId:(unint64_t)a5 styleGroupId:(unint64_t)a6 semanticClassId:(unint64_t)a7 modelId:(unint64_t)a8 categoryId:(unint64_t)a9 isCustomResponse:(BOOL)a10 isRobotResponse:(BOOL)a11 isConfident:(BOOL)a12 proactiveTrigger:(id)a13
{
  v37 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a13;
  v34.receiver = self;
  v34.super_class = SGQuickResponse;
  v22 = [(SGQuickResponse *)&v34 init];
  if (v22)
  {
    v31 = v21;
    obj = a4;
    v33 = v20;
    if (a10)
    {
      v23 = a8;
      v24 = v19;
    }

    else
    {
      v25 = SGNormalizeEmojisInString(v19);
      v26 = [v25 isEqualToString:v19];

      if ((v26 & 1) == 0)
      {
        v27 = sgLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v36 = v20;
          _os_log_fault_impl(&dword_24799E000, v27, OS_LOG_TYPE_FAULT, "A (lang: %@) canned response includes emojis with skin-tone modifiers!", buf, 0xCu);
        }

        if (_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          abort();
        }
      }

      v23 = a8;
      v24 = SGPersonalizeEmojisInString(v19);
    }

    text = v22->_text;
    v22->_text = v24;

    objc_storeStrong(&v22->_lang, obj);
    v22->_replyTextId = a5;
    v22->_styleGroupId = a6;
    v22->_semanticClassId = a7;
    v22->_modelId = v23;
    v22->_categoryId = a9;
    v22->_isCustomResponse = a10;
    v22->_isRobotResponse = a11;
    v22->_isConfident = a12;
    objc_storeStrong(&v22->_proactiveTrigger, a13);
    v20 = v33;
    v21 = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (SGQuickResponse)initWithProactiveTrigger:(id)a3 isConfident:(BOOL)a4
{
  BYTE2(v5) = a4;
  LOWORD(v5) = 0;
  return [SGQuickResponse initWithText:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:proactiveTrigger:" lang:&stru_285992FC0 replyTextId:&stru_285992FC0 styleGroupId:0 semanticClassId:0 modelId:0 categoryId:0 isCustomResponse:0 isRobotResponse:v5 isConfident:a3 proactiveTrigger:?];
}

- (SGQuickResponse)initWithText:(id)a3 lang:(id)a4 replyTextId:(unint64_t)a5 styleGroupId:(unint64_t)a6 semanticClassId:(unint64_t)a7 modelId:(unint64_t)a8 categoryId:(unint64_t)a9 isCustomResponse:(BOOL)a10 isRobotResponse:(BOOL)a11 isConfident:(BOOL)a12
{
  v17 = a3;
  v18 = a4;
  if (![v17 length])
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"text.length"}];
  }

  if (![v18 length])
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"lang.length"}];
  }

  BYTE2(v22) = a12;
  LOWORD(v22) = __PAIR16__(a11, a10);
  v19 = [SGQuickResponse initWithText:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:proactiveTrigger:" lang:v17 replyTextId:v18 styleGroupId:a5 semanticClassId:a6 modelId:a7 categoryId:a8 isCustomResponse:a9 isRobotResponse:v22 isConfident:0 proactiveTrigger:?];

  return v19;
}

@end