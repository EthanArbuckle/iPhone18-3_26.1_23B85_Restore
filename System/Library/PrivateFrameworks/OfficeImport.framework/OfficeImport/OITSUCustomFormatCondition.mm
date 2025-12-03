@interface OITSUCustomFormatCondition
- (BOOL)isEqual:(id)equal;
- (OITSUCustomFormatCondition)init;
- (OITSUCustomFormatCondition)initWithType:(int)type value:(double)value data:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation OITSUCustomFormatCondition

- (OITSUCustomFormatCondition)init
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormatCondition init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
  [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:526 isFatal:0 description:"Do not call init for TSUCustomFormatCondition"];

  +[OITSUAssertionHandler logBacktraceThrottled];
  return 0;
}

- (OITSUCustomFormatCondition)initWithType:(int)type value:(double)value data:(id)data
{
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = OITSUCustomFormatCondition;
  v9 = [(OITSUCustomFormatCondition *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_conditionType = type;
    v9->_conditionValue = value;
    if (!dataCopy)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormatCondition initWithType:value:data:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
      [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:537 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v13 = [dataCopy copy];
    data = v10->_data;
    v10->_data = v13;

    [(OITSUCustomFormatData *)v10->_data setIsConditional:1];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [OITSUCustomFormatCondition allocWithZone:zone];
  conditionType = [(OITSUCustomFormatCondition *)self conditionType];
  [(OITSUCustomFormatCondition *)self conditionValue];
  v7 = v6;
  data = [(OITSUCustomFormatCondition *)self data];
  v9 = [(OITSUCustomFormatCondition *)v4 initWithType:conditionType value:data data:v7];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, equalCopy);

  if (v6 && (-[OITSUCustomFormatCondition conditionValue](self, "conditionValue"), v8 = v7, [v6 conditionValue], v8 == v9) && (v10 = -[OITSUCustomFormatCondition conditionType](self, "conditionType"), v10 == objc_msgSend(v6, "conditionType")))
  {
    data = [(OITSUCustomFormatCondition *)self data];
    data2 = [v6 data];
    v13 = [data isEqual:data2];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end