@interface HFCameraClipPosition
+ (HFCameraClipPosition)positionWithClip:(id)a3 offset:(double)a4;
+ (HFCameraClipPosition)positionWithEvent:(id)a3 offset:(double)a4;
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFCameraClipPosition)initWithEvent:(id)a3 offset:(double)a4;
- (NSDate)date;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HFCameraClipPosition

+ (HFCameraClipPosition)positionWithClip:(id)a3 offset:(double)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithEvent:v6 offset:a4];

  return v7;
}

+ (HFCameraClipPosition)positionWithEvent:(id)a3 offset:(double)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithEvent:v6 offset:a4];

  return v7;
}

- (HFCameraClipPosition)initWithEvent:(id)a3 offset:(double)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"HMCameraClipManager+HFAdditions.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"event != nil"}];
  }

  v13.receiver = self;
  v13.super_class = HFCameraClipPosition;
  v9 = [(HFCameraClipPosition *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, a3);
    v10->_offset = a4;
  }

  return v10;
}

- (NSDate)date
{
  v3 = [(HFCameraClipPosition *)self event];
  v4 = [v3 dateOfOccurrence];
  [(HFCameraClipPosition *)self offset];
  v5 = [v4 dateByAddingTimeInterval:?];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFCameraClipPosition *)self event];
  [(HFCameraClipPosition *)self offset];
  v6 = [v4 initWithEvent:v5 offset:?];

  return v6;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_325 != -1)
  {
    dispatch_once(&_MergedGlobals_325, &__block_literal_global_14_12);
  }

  v3 = qword_280E03D98;

  return v3;
}

void __35__HFCameraClipPosition_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_21_7];
  v2 = [v0 appendDoubleCharacteristic:&__block_literal_global_24_9];
  v3 = [v0 build];

  v4 = qword_280E03D98;
  qword_280E03D98 = v3;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFCameraClipPosition *)self event];
  v5 = [v4 hf_prettyDescription];
  v6 = [v3 appendObject:v5 withName:@"clip"];

  [(HFCameraClipPosition *)self offset];
  v7 = [v3 appendDouble:@"offset" withName:3 decimalPrecision:?];
  v8 = [v3 build];

  return v8;
}

@end