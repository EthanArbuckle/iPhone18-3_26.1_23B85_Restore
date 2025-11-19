@interface WFiWorkPDFConverter
+ (BOOL)canHandleFile:(id)a3;
- (void)convertToPDF:(WFFileRepresentation *)a3 completionHandler:(id)a4;
- (void)executor:(id)a3 didPerformActionWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
@end

@implementation WFiWorkPDFConverter

+ (BOOL)canHandleFile:(id)a3
{
  v3 = a3;
  v4 = static WFiWorkPDFConverter.canHandleFile(_:)(v3);

  return v4;
}

- (void)convertToPDF:(WFFileRepresentation *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_21E1C66A4(&unk_21E3524D8, v7);
}

- (void)executor:(id)a3 didPerformActionWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  WFiWorkPDFConverter.executor(_:didPerformActionWith:error:)(v11, a4, a5);
}

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  WFiWorkPDFConverter.executor(_:needsConfirmationWith:)(v9, v8);
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  WFiWorkPDFConverter.executor(_:needsDisambiguationWith:)(v9, v8);
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = self;
  WFiWorkPDFConverter.executor(_:needsValueWith:)(v9, v8);
}

@end