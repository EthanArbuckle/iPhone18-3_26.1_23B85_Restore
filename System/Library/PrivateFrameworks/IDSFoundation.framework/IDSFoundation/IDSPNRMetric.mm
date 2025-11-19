@interface IDSPNRMetric
- (IDSPNRMetric)initWithPNRReason:(int64_t)a3 mechanism:(int64_t)a4;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSPNRMetric

- (IDSPNRMetric)initWithPNRReason:(int64_t)a3 mechanism:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = IDSPNRMetric;
  result = [(IDSPNRMetric *)&v7 init];
  if (result)
  {
    result->_pnrReason = a3;
    result->_mechanism = a4;
  }

  return result;
}

- (NSDictionary)dictionaryRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"reason";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSPNRMetric pnrReason](self, "pnrReason")}];
  v7[1] = @"mechanism";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSPNRMetric mechanism](self, "mechanism")}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

@end