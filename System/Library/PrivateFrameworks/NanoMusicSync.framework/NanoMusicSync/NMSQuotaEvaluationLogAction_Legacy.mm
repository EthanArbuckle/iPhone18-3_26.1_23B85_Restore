@interface NMSQuotaEvaluationLogAction_Legacy
+ (id)logActionWithActionType:(unint64_t)type state:(id)state;
- (NMSQuotaEvaluationLogAction_Legacy)initWithActionType:(unint64_t)type state:(id)state;
- (id)_identifierLogMessage;
- (id)_stringForType:(unint64_t)type;
- (id)logMessage;
@end

@implementation NMSQuotaEvaluationLogAction_Legacy

+ (id)logActionWithActionType:(unint64_t)type state:(id)state
{
  stateCopy = state;
  v7 = [[self alloc] initWithActionType:type state:stateCopy];

  return v7;
}

- (NMSQuotaEvaluationLogAction_Legacy)initWithActionType:(unint64_t)type state:(id)state
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = NMSQuotaEvaluationLogAction_Legacy;
  v8 = [(NMSQuotaEvaluationLogAction_Legacy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_state, state);
  }

  return v9;
}

- (id)_identifierLogMessage
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  mediaLibraryIdentifier = [(NMSQuotaEvaluationState_Legacy *)self->_state mediaLibraryIdentifier];

  if (mediaLibraryIdentifier)
  {
    mediaLibraryIdentifier2 = [(NMSQuotaEvaluationState_Legacy *)self->_state mediaLibraryIdentifier];
    [v3 addObject:mediaLibraryIdentifier2];
  }

  externalLibraryIdentifier = [(NMSQuotaEvaluationState_Legacy *)self->_state externalLibraryIdentifier];

  if (externalLibraryIdentifier)
  {
    externalLibraryIdentifier2 = [(NMSQuotaEvaluationState_Legacy *)self->_state externalLibraryIdentifier];
    [v3 addObject:externalLibraryIdentifier2];
  }

  v8 = [v3 componentsJoinedByString:@" - "];

  return v8;
}

- (id)logMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NMSQuotaEvaluationLogAction_Legacy *)self _stringForType:self->_type];
  containerIndex = [(NMSQuotaEvaluationState_Legacy *)self->_state containerIndex];
  itemIndex = [(NMSQuotaEvaluationState_Legacy *)self->_state itemIndex];
  _identifierLogMessage = [(NMSQuotaEvaluationLogAction_Legacy *)self _identifierLogMessage];
  v8 = [v3 stringWithFormat:@"%@\tCTNR:%3ld\tITEM:%3ld\t%@\titemSize:%llu\tlistSize:%llu", v4, containerIndex, itemIndex, _identifierLogMessage, -[NMSQuotaEvaluationState_Legacy itemSize](self->_state, "itemSize"), -[NMSQuotaEvaluationState_Legacy listTotalSize](self->_state, "listTotalSize")];

  return v8;
}

- (id)_stringForType:(unint64_t)type
{
  if (type > 3)
  {
    return &stru_286C836D8;
  }

  else
  {
    return off_27993DE40[type];
  }
}

@end