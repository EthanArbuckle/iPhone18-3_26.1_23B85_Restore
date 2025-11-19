@interface CPLFeedbackRecordClassForClass
@end

@implementation CPLFeedbackRecordClassForClass

void ___CPLFeedbackRecordClassForClass_block_invoke_28(uint64_t a1)
{
  v2 = [_CPLFeedbackRecordClassForClass_mapping objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = NSStringFromClass(*(a1 + 40));
    v6 = [v5 mutableCopy];

    [v6 replaceOccurrencesOfString:@"Change" withString:&stru_1F57BD298 options:0 range:{0, objc_msgSend(v6, "length")}];
    [_CPLFeedbackRecordClassForClass_mapping setObject:v6 forKeyedSubscript:*(a1 + 40)];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

uint64_t ___CPLFeedbackRecordClassForClass_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.quarantinefeedback", 0);
  v1 = _CPLFeedbackRecordClassForClass_queue;
  _CPLFeedbackRecordClassForClass_queue = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = _CPLFeedbackRecordClassForClass_mapping;
  _CPLFeedbackRecordClassForClass_mapping = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

@end