@interface CHLineWrapper
- (CHLineWrapper)init;
- (id)lineWrappingResultForGroups:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation CHLineWrapper

- (CHLineWrapper)init
{
  v12.receiver = self;
  v12.super_class = CHLineWrapper;
  v2 = [(CHLineWrapper *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D9DC0]);
    v4 = objc_alloc(MEMORY[0x1E69D9DB8]);
    v9 = objc_msgSend_initWithConfiguration_(v4, v5, v3, v6, v7, v8);
    lineWrapper = v2->_lineWrapper;
    v2->_lineWrapper = v9;
  }

  return v2;
}

- (id)lineWrappingResultForGroups:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = objc_msgSend_paragraphsByUpdatingLineWrappingTypesInGroups_useHandwritingConfig_(self->_lineWrapper, a2, a3, 1, a5, v5);
  v7 = [CHLineWrappingResult alloc];
  v12 = objc_msgSend_initWithLineWrappableGroups_(v7, v8, v6, v9, v10, v11);

  return v12;
}

@end