@interface ContextXPCServiceServer.Server
- (void)dumpUIContextFromCacheWith:(id)with;
- (void)refreshAndRetrieveWithContextTypes:(id)types with:(id)with;
- (void)refreshWithContextTypes:(id)types interactionId:(id)id with:(id)with;
- (void)retrieveAndRankIntelligenceCommandContextValuesWithQuery:(id)query appBundleIds:(id)ids threshold:(id)threshold timeout:(id)timeout with:(id)with;
- (void)retrieveContextValuesWithContextTypes:(id)types timeout:(id)timeout with:(id)with;
- (void)retrieveContextValuesWithFailuresWithContextTypes:(id)types timeout:(id)timeout with:(id)with;
- (void)retrieveContextValuesWithQuery:(id)query with:(id)with;
- (void)retrieveRequiredContextValuesWith:(id)with;
@end

@implementation ContextXPCServiceServer.Server

- (void)refreshWithContextTypes:(id)types interactionId:(id)id with:(id)with
{
  v7 = _Block_copy(with);
  if (types)
  {
    idCopy = id;
    selfCopy = self;
    typesCopy = types;
    types = sub_254F27900();
    v12 = v11;

    if (!id)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  idCopy2 = id;
  selfCopy2 = self;
  v12 = 0xF000000000000000;
  if (id)
  {
LABEL_3:
    sub_254F29450();
  }

LABEL_5:
  *(swift_allocObject() + 16) = v7;
  sub_254F1AFE4();

  sub_254EF2778(types, v12);
}

- (void)refreshAndRetrieveWithContextTypes:(id)types with:(id)with
{
  v5 = _Block_copy(with);
  selfCopy = self;
  if (types)
  {
    typesCopy = types;
    v8 = sub_254F27900();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  *(swift_allocObject() + 16) = v5;
  sub_254F1B830();

  sub_254EF2778(v8, v10);
}

- (void)retrieveContextValuesWithContextTypes:(id)types timeout:(id)timeout with:(id)with
{
  v8 = _Block_copy(with);
  typesCopy = types;
  timeoutCopy = timeout;
  selfCopy = self;
  v11 = sub_254F27900();
  v13 = v12;

  *(swift_allocObject() + 16) = v8;
  sub_254F1E0CC();

  sub_254EF278C(v11, v13);
}

- (void)retrieveContextValuesWithFailuresWithContextTypes:(id)types timeout:(id)timeout with:(id)with
{
  v8 = _Block_copy(with);
  typesCopy = types;
  timeoutCopy = timeout;
  selfCopy = self;
  v11 = sub_254F27900();
  v13 = v12;

  *(swift_allocObject() + 16) = v8;
  sub_254F1E0CC();

  sub_254EF278C(v11, v13);
}

- (void)retrieveAndRankIntelligenceCommandContextValuesWithQuery:(id)query appBundleIds:(id)ids threshold:(id)threshold timeout:(id)timeout with:(id)with
{
  v10 = _Block_copy(with);
  sub_254F29450();
  sub_254F29560();
  *(swift_allocObject() + 16) = v10;
  thresholdCopy = threshold;
  timeoutCopy = timeout;
  selfCopy = self;
  sub_254F1F59C();
}

- (void)retrieveContextValuesWithQuery:(id)query with:(id)with
{
  v5 = _Block_copy(with);
  sub_254F29450();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  selfCopy = self;
  sub_254F1FCF8(selfCopy, v8, sub_254F22830, v6);
}

- (void)retrieveRequiredContextValuesWith:(id)with
{
  v4 = _Block_copy(with);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_254F20B4C(sub_254F22830, v5);
}

- (void)dumpUIContextFromCacheWith:(id)with
{
  v4 = _Block_copy(with);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_254F21938(sub_254F21FB0, v5);
}

@end