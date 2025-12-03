@interface SGQuickResponse
- (SGQuickResponse)initWithProactiveTrigger:(id)trigger isConfident:(BOOL)confident;
- (SGQuickResponse)initWithText:(id)text lang:(id)lang replyTextId:(unint64_t)id styleGroupId:(unint64_t)groupId semanticClassId:(unint64_t)classId modelId:(unint64_t)modelId categoryId:(unint64_t)categoryId isCustomResponse:(BOOL)self0 isRobotResponse:(BOOL)self1 isConfident:(BOOL)self2;
- (SGQuickResponse)initWithText:(id)text lang:(id)lang replyTextId:(unint64_t)id styleGroupId:(unint64_t)groupId semanticClassId:(unint64_t)classId modelId:(unint64_t)modelId categoryId:(unint64_t)categoryId isCustomResponse:(BOOL)self0 isRobotResponse:(BOOL)self1 isConfident:(BOOL)self2 proactiveTrigger:(id)self3;
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

- (SGQuickResponse)initWithText:(id)text lang:(id)lang replyTextId:(unint64_t)id styleGroupId:(unint64_t)groupId semanticClassId:(unint64_t)classId modelId:(unint64_t)modelId categoryId:(unint64_t)categoryId isCustomResponse:(BOOL)self0 isRobotResponse:(BOOL)self1 isConfident:(BOOL)self2 proactiveTrigger:(id)self3
{
  v37 = *MEMORY[0x277D85DE8];
  textCopy = text;
  langCopy = lang;
  triggerCopy = trigger;
  v34.receiver = self;
  v34.super_class = SGQuickResponse;
  v22 = [(SGQuickResponse *)&v34 init];
  if (v22)
  {
    v31 = triggerCopy;
    obj = lang;
    v33 = langCopy;
    if (response)
    {
      modelIdCopy2 = modelId;
      v24 = textCopy;
    }

    else
    {
      v25 = SGNormalizeEmojisInString(textCopy);
      v26 = [v25 isEqualToString:textCopy];

      if ((v26 & 1) == 0)
      {
        v27 = sgLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v36 = langCopy;
          _os_log_fault_impl(&dword_24799E000, v27, OS_LOG_TYPE_FAULT, "A (lang: %@) canned response includes emojis with skin-tone modifiers!", buf, 0xCu);
        }

        if (_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          abort();
        }
      }

      modelIdCopy2 = modelId;
      v24 = SGPersonalizeEmojisInString(textCopy);
    }

    text = v22->_text;
    v22->_text = v24;

    objc_storeStrong(&v22->_lang, obj);
    v22->_replyTextId = id;
    v22->_styleGroupId = groupId;
    v22->_semanticClassId = classId;
    v22->_modelId = modelIdCopy2;
    v22->_categoryId = categoryId;
    v22->_isCustomResponse = response;
    v22->_isRobotResponse = robotResponse;
    v22->_isConfident = confident;
    objc_storeStrong(&v22->_proactiveTrigger, trigger);
    langCopy = v33;
    triggerCopy = v31;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (SGQuickResponse)initWithProactiveTrigger:(id)trigger isConfident:(BOOL)confident
{
  BYTE2(v5) = confident;
  LOWORD(v5) = 0;
  return [SGQuickResponse initWithText:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:proactiveTrigger:" lang:&stru_285992FC0 replyTextId:&stru_285992FC0 styleGroupId:0 semanticClassId:0 modelId:0 categoryId:0 isCustomResponse:0 isRobotResponse:v5 isConfident:trigger proactiveTrigger:?];
}

- (SGQuickResponse)initWithText:(id)text lang:(id)lang replyTextId:(unint64_t)id styleGroupId:(unint64_t)groupId semanticClassId:(unint64_t)classId modelId:(unint64_t)modelId categoryId:(unint64_t)categoryId isCustomResponse:(BOOL)self0 isRobotResponse:(BOOL)self1 isConfident:(BOOL)self2
{
  textCopy = text;
  langCopy = lang;
  if (![textCopy length])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"text.length"}];
  }

  if (![langCopy length])
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"lang.length"}];
  }

  BYTE2(v22) = confident;
  LOWORD(v22) = __PAIR16__(robotResponse, response);
  v19 = [SGQuickResponse initWithText:"initWithText:lang:replyTextId:styleGroupId:semanticClassId:modelId:categoryId:isCustomResponse:isRobotResponse:isConfident:proactiveTrigger:" lang:textCopy replyTextId:langCopy styleGroupId:id semanticClassId:groupId modelId:classId categoryId:modelId isCustomResponse:categoryId isRobotResponse:v22 isConfident:0 proactiveTrigger:?];

  return v19;
}

@end