@interface COMeshCommand
- (COMeshCommand)init;
- (COMeshCommand)initWithCoder:(id)coder;
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

- (COMeshCommand)initWithCoder:(id)coder
{
  if ([coder decodeIntegerForKey:@"version"] == 1)
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
  rapportOptions = [(COMeshCommand *)self rapportOptions];
  v3 = [rapportOptions objectForKey:*MEMORY[0x277D442F8]];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)_sendingConstituent
{
  sender = [(COMeshCommand *)self sender];
  v4 = sender;
  if (sender)
  {
    [sender remote];
  }

  else
  {
    objc_getAssociatedObject(self, sel__sendingConstituent);
  }
  v5 = ;

  return v5;
}

@end