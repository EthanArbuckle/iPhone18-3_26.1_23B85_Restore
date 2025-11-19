@interface AVFileProcessor
+ (id)fileProcessor;
- (id)processPurchasedItem:(id)a3 withAttributes:(id)a4 resultInfo:(id *)a5 progressBlock:(id)a6;
- (void)dealloc;
@end

@implementation AVFileProcessor

+ (id)fileProcessor
{
  v2 = objc_alloc_init(AVFileProcessor);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFileProcessor;
  [(AVFileProcessor *)&v3 dealloc];
}

- (id)processPurchasedItem:(id)a3 withAttributes:(id)a4 resultInfo:(id *)a5 progressBlock:(id)a6
{
  self->_percentComplete = 0.0;
  v7 = [a6 copy];

  self->_progressBlock = v7;
  v8 = PostProcessPurchasedItem();
  if (v8)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end