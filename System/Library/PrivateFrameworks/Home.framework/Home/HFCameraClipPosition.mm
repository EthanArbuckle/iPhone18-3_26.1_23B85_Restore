@interface HFCameraClipPosition
+ (HFCameraClipPosition)positionWithClip:(id)clip offset:(double)offset;
+ (HFCameraClipPosition)positionWithEvent:(id)event offset:(double)offset;
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFCameraClipPosition)initWithEvent:(id)event offset:(double)offset;
- (NSDate)date;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HFCameraClipPosition

+ (HFCameraClipPosition)positionWithClip:(id)clip offset:(double)offset
{
  clipCopy = clip;
  v7 = [[self alloc] initWithEvent:clipCopy offset:offset];

  return v7;
}

+ (HFCameraClipPosition)positionWithEvent:(id)event offset:(double)offset
{
  eventCopy = event;
  v7 = [[self alloc] initWithEvent:eventCopy offset:offset];

  return v7;
}

- (HFCameraClipPosition)initWithEvent:(id)event offset:(double)offset
{
  eventCopy = event;
  if (!eventCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HMCameraClipManager+HFAdditions.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"event != nil"}];
  }

  v13.receiver = self;
  v13.super_class = HFCameraClipPosition;
  v9 = [(HFCameraClipPosition *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_event, event);
    v10->_offset = offset;
  }

  return v10;
}

- (NSDate)date
{
  event = [(HFCameraClipPosition *)self event];
  dateOfOccurrence = [event dateOfOccurrence];
  [(HFCameraClipPosition *)self offset];
  v5 = [dateOfOccurrence dateByAddingTimeInterval:?];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  event = [(HFCameraClipPosition *)self event];
  [(HFCameraClipPosition *)self offset];
  v6 = [v4 initWithEvent:event offset:?];

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
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  event = [(HFCameraClipPosition *)self event];
  hf_prettyDescription = [event hf_prettyDescription];
  v6 = [v3 appendObject:hf_prettyDescription withName:@"clip"];

  [(HFCameraClipPosition *)self offset];
  v7 = [v3 appendDouble:@"offset" withName:3 decimalPrecision:?];
  build = [v3 build];

  return build;
}

@end