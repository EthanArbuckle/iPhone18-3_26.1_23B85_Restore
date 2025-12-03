@interface MKFeaturePayload
- (MKFeaturePayload)init;
@end

@implementation MKFeaturePayload

- (MKFeaturePayload)init
{
  v6.receiver = self;
  v6.super_class = MKFeaturePayload;
  v2 = [(MKFeaturePayload *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(MKFeaturePayload *)v2 setState:@"?"];
    zero = [MEMORY[0x277CCA980] zero];
    [(MKFeaturePayload *)v3 setImportElapsedTime:zero];
  }

  return v3;
}

@end