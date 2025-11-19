@interface ContextXPCServiceServer.Server
- (void)dumpUIContextFromCacheWith:(id)a3;
- (void)refreshAndRetrieveWithContextTypes:(id)a3 with:(id)a4;
- (void)refreshWithContextTypes:(id)a3 interactionId:(id)a4 with:(id)a5;
- (void)retrieveAndRankIntelligenceCommandContextValuesWithQuery:(id)a3 appBundleIds:(id)a4 threshold:(id)a5 timeout:(id)a6 with:(id)a7;
- (void)retrieveContextValuesWithContextTypes:(id)a3 timeout:(id)a4 with:(id)a5;
- (void)retrieveContextValuesWithFailuresWithContextTypes:(id)a3 timeout:(id)a4 with:(id)a5;
- (void)retrieveContextValuesWithQuery:(id)a3 with:(id)a4;
- (void)retrieveRequiredContextValuesWith:(id)a3;
@end

@implementation ContextXPCServiceServer.Server

- (void)refreshWithContextTypes:(id)a3 interactionId:(id)a4 with:(id)a5
{
  v7 = _Block_copy(a5);
  if (a3)
  {
    v8 = a4;
    v9 = self;
    v10 = a3;
    a3 = sub_254F27900();
    v12 = v11;

    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v13 = a4;
  v14 = self;
  v12 = 0xF000000000000000;
  if (a4)
  {
LABEL_3:
    sub_254F29450();
  }

LABEL_5:
  *(swift_allocObject() + 16) = v7;
  sub_254F1AFE4();

  sub_254EF2778(a3, v12);
}

- (void)refreshAndRetrieveWithContextTypes:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
  if (a3)
  {
    v7 = a3;
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

- (void)retrieveContextValuesWithContextTypes:(id)a3 timeout:(id)a4 with:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v14 = self;
  v11 = sub_254F27900();
  v13 = v12;

  *(swift_allocObject() + 16) = v8;
  sub_254F1E0CC();

  sub_254EF278C(v11, v13);
}

- (void)retrieveContextValuesWithFailuresWithContextTypes:(id)a3 timeout:(id)a4 with:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v14 = self;
  v11 = sub_254F27900();
  v13 = v12;

  *(swift_allocObject() + 16) = v8;
  sub_254F1E0CC();

  sub_254EF278C(v11, v13);
}

- (void)retrieveAndRankIntelligenceCommandContextValuesWithQuery:(id)a3 appBundleIds:(id)a4 threshold:(id)a5 timeout:(id)a6 with:(id)a7
{
  v10 = _Block_copy(a7);
  sub_254F29450();
  sub_254F29560();
  *(swift_allocObject() + 16) = v10;
  v11 = a5;
  v12 = a6;
  v13 = self;
  sub_254F1F59C();
}

- (void)retrieveContextValuesWithQuery:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  sub_254F29450();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  sub_254F1FCF8(v7, v8, sub_254F22830, v6);
}

- (void)retrieveRequiredContextValuesWith:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_254F20B4C(sub_254F22830, v5);
}

- (void)dumpUIContextFromCacheWith:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_254F21938(sub_254F21FB0, v5);
}

@end