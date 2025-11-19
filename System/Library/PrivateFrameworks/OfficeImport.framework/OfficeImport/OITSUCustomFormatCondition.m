@interface OITSUCustomFormatCondition
- (BOOL)isEqual:(id)a3;
- (OITSUCustomFormatCondition)init;
- (OITSUCustomFormatCondition)initWithType:(int)a3 value:(double)a4 data:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
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

- (OITSUCustomFormatCondition)initWithType:(int)a3 value:(double)a4 data:(id)a5
{
  v8 = a5;
  v16.receiver = self;
  v16.super_class = OITSUCustomFormatCondition;
  v9 = [(OITSUCustomFormatCondition *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_conditionType = a3;
    v9->_conditionValue = a4;
    if (!v8)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSUCustomFormatCondition initWithType:value:data:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSUCustomFormat.m"];
      [OITSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:537 isFatal:0 description:"invalid nil value for '%{public}s'", "data"];

      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v13 = [v8 copy];
    data = v10->_data;
    v10->_data = v13;

    [(OITSUCustomFormatData *)v10->_data setIsConditional:1];
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [OITSUCustomFormatCondition allocWithZone:a3];
  v5 = [(OITSUCustomFormatCondition *)self conditionType];
  [(OITSUCustomFormatCondition *)self conditionValue];
  v7 = v6;
  v8 = [(OITSUCustomFormatCondition *)self data];
  v9 = [(OITSUCustomFormatCondition *)v4 initWithType:v5 value:v8 data:v7];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);

  if (v6 && (-[OITSUCustomFormatCondition conditionValue](self, "conditionValue"), v8 = v7, [v6 conditionValue], v8 == v9) && (v10 = -[OITSUCustomFormatCondition conditionType](self, "conditionType"), v10 == objc_msgSend(v6, "conditionType")))
  {
    v11 = [(OITSUCustomFormatCondition *)self data];
    v12 = [v6 data];
    v13 = [v11 isEqual:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end