@interface DUFoundInEventClassificationResult
- (NSNumber)containsDataDetectors;
- (NSNumber)isClassifiedAsEvent;
- (NSNumber)isEventCandidate;
- (NSNumber)isSupportedLocale;
- (NSNumber)textLengthPass;
- (id)copyWithZone:(void *)a3;
- (id)serializedData;
- (void)encodeWithCoder:(id)a3;
- (void)setContainsDataDetectors:(id)a3;
- (void)setIsClassifiedAsEvent:(id)a3;
- (void)setIsEventCandidate:(id)a3;
- (void)setIsSupportedLocale:(id)a3;
- (void)setTextLengthPass:(id)a3;
@end

@implementation DUFoundInEventClassificationResult

- (NSNumber)isSupportedLocale
{
  v2 = sub_232BAE340();

  return v2;
}

- (void)setIsSupportedLocale:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BAE3D8();
}

- (NSNumber)containsDataDetectors
{
  v2 = sub_232BAE4C8();

  return v2;
}

- (void)setContainsDataDetectors:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BAE560();
}

- (NSNumber)isClassifiedAsEvent
{
  v2 = sub_232BAE650();

  return v2;
}

- (void)setIsClassifiedAsEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BAE6E8();
}

- (NSNumber)textLengthPass
{
  v2 = sub_232BAE7D8();

  return v2;
}

- (void)setTextLengthPass:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BAE870();
}

- (NSNumber)isEventCandidate
{
  v2 = sub_232BAE960();

  return v2;
}

- (void)setIsEventCandidate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BAE9F8();
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232BAF4B8(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (id)serializedData
{
  v2 = self;
  v3 = sub_232BAF5B0();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BAF6EC(v4);
}

@end