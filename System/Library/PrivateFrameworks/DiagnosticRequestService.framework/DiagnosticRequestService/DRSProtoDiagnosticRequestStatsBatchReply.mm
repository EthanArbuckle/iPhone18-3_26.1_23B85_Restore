@interface DRSProtoDiagnosticRequestStatsBatchReply
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DRSProtoDiagnosticRequestStatsBatchReply

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoDiagnosticRequestStatsBatchReply;
  v4 = [(DRSProtoDiagnosticRequestStatsBatchReply *)&v8 description];
  dictionaryRepresentation = [(DRSProtoDiagnosticRequestStatsBatchReply *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end