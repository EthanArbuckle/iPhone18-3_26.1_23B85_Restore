@interface DULanguageTaggingResponseObjC
- (DUDebugInfoObjC)responseDebugInfo;
- (DULanguageTaggingResponseObjC)init;
- (void)setResponseDebugInfo:(id)info;
@end

@implementation DULanguageTaggingResponseObjC

- (void)setResponseDebugInfo:(id)info
{
  v9 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, a2, info, v3, v4);
  objc_msgSend_setResponseDebugInfo_(self->_underlying, v6, v9, v7, v8);
}

- (DUDebugInfoObjC)responseDebugInfo
{
  v5 = objc_msgSend_responseDebugInfo(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (DULanguageTaggingResponseObjC)init
{
  v7.receiver = self;
  v7.super_class = DULanguageTaggingResponseObjC;
  v2 = [(DULanguageTaggingResponseObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding25DULanguageTaggingResponse);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end