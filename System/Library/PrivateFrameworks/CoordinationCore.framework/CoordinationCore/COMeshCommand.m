@interface COMeshCommand
- (COMeshCommand)init;
- (COMeshCommand)initWithCoder:(id)a3;
- (id)_sendingConstituent;
- (unint64_t)rapportTransactionID;
@end

@implementation COMeshCommand

- (COMeshCommand)init
{
  v3.receiver = self;
  v3.super_class = COMeshCommand;
  return [(COMeshCommand *)&v3 init];
}

- (COMeshCommand)initWithCoder:(id)a3
{
  if ([a3 decodeIntegerForKey:@"version"] == 1)
  {
    v5.receiver = self;
    v5.super_class = COMeshCommand;
    return [(COMeshCommand *)&v5 init];
  }

  else
  {

    return 0;
  }
}

- (unint64_t)rapportTransactionID
{
  v2 = [(COMeshCommand *)self rapportOptions];
  v3 = [v2 objectForKey:*MEMORY[0x277D442F8]];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)_sendingConstituent
{
  v3 = [(COMeshCommand *)self sender];
  v4 = v3;
  if (v3)
  {
    [v3 remote];
  }

  else
  {
    objc_getAssociatedObject(self, sel__sendingConstituent);
  }
  v5 = ;

  return v5;
}

@end