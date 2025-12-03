@interface BWStillImageConditionalRouterUBConfiguration
+ (id)configurationWithPortTypes:(id)types;
- (void)dealloc;
- (void)initWithPortTypes:(void *)types;
@end

@implementation BWStillImageConditionalRouterUBConfiguration

+ (id)configurationWithPortTypes:(id)types
{
  v3 = [[BWStillImageConditionalRouterUBConfiguration alloc] initWithPortTypes:types];

  return v3;
}

BOOL __66__BWStillImageConditionalRouterUBConfiguration_initWithPortTypes___block_invoke(uint64_t a1, CMAttachmentBearerRef target, _DWORD *a3)
{
  v4 = [*(a1 + 32) indexOfObject:{objc_msgSend(CMGetAttachment(target, *off_1E798A3C8, 0), "objectForKeyedSubscript:", *off_1E798B540)}];
  if (a3 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = v4;
  }

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageConditionalRouterUBConfiguration;
  [(BWStillImageConditionalRouterConfiguration *)&v3 dealloc];
}

- (void)initWithPortTypes:(void *)types
{
  typesCopy = types;
  if (types)
  {
    if ([a2 count])
    {
      v6.receiver = typesCopy;
      v6.super_class = BWStillImageConditionalRouterUBConfiguration;
      typesCopy = objc_msgSendSuper2(&v6, sel_initWithNumberOfOutputs_, [a2 count]);
      if (typesCopy)
      {
        typesCopy[5] = a2;
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __66__BWStillImageConditionalRouterUBConfiguration_initWithPortTypes___block_invoke;
        v5[3] = &unk_1E7991470;
        v5[4] = a2;
        [typesCopy setShouldEmitSampleBufferDecisionProvider:v5];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();

      return 0;
    }
  }

  return typesCopy;
}

@end