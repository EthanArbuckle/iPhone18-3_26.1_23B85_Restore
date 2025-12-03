@interface CoreIRBus
- (BOOL)setPairedAppleRemote:(id)remote error:(id *)error;
- (CoreIRBus)init;
- (CoreIRBus)initWithBus:(id)bus;
- (CoreIRBus)initWithCoder:(id)coder;
- (id)description;
- (void)dealloc;
- (void)didDispatchCommandFromAppleRemote:(id)remote;
- (void)encodeWithCoder:(id)coder;
- (void)setLastAppleRemote:(id)remote;
- (void)setPairedAppleRemote:(id)remote;
- (void)willRemoveDevice:(id)device;
@end

@implementation CoreIRBus

- (CoreIRBus)init
{
  v3.receiver = self;
  v3.super_class = CoreIRBus;
  result = [(CoreRCBus *)&v3 init];
  if (result)
  {
    result->_pairedAppleRemote = 0;
    result->_lastAppleRemote = 0;
  }

  return result;
}

- (CoreIRBus)initWithBus:(id)bus
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = CoreIRBus;
    v5 = [(CoreRCBus *)&v7 initWithBus:bus];
    if (v5)
    {
      -[CoreIRBus setPairedAppleRemote:](v5, "setPairedAppleRemote:", [bus pairedAppleRemote]);
      -[CoreIRBus setLastAppleRemote:](v5, "setLastAppleRemote:", [bus lastAppleRemote]);
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreIRBus)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CoreIRBus;
  v4 = [(CoreRCBus *)&v6 initWithCoder:?];
  if (v4)
  {
    -[CoreIRBus setPairedAppleRemote:](v4, "setPairedAppleRemote:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"pairedAppleRemote"]);
    -[CoreIRBus setLastAppleRemote:](v4, "setLastAppleRemote:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"lastAppleRemote"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CoreIRBus;
  [(CoreRCBus *)&v5 encodeWithCoder:?];
  [coder encodeObject:-[CoreIRBus pairedAppleRemote](self forKey:{"pairedAppleRemote"), @"pairedAppleRemote"}];
  [coder encodeObject:-[CoreIRBus lastAppleRemote](self forKey:{"lastAppleRemote"), @"lastAppleRemote"}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreIRBus;
  [(CoreRCBus *)&v3 dealloc];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CoreIRBus;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCBus description](&v6, sel_description)}];
  if ([(CoreIRBus *)self pairedAppleRemote])
  {
    pairedAppleRemote = [(CoreIRBus *)self pairedAppleRemote];
  }

  else
  {
    pairedAppleRemote = @"N";
  }

  [v3 appendFormat:@" Paired: %@;", pairedAppleRemote];
  if ([(CoreIRBus *)self lastAppleRemote])
  {
    [v3 appendFormat:@" Last Apple Remote: %@;", -[CoreIRBus lastAppleRemote](self, "lastAppleRemote")];
  }

  return v3;
}

- (void)willRemoveDevice:(id)device
{
  if ([(CoreRCDevice *)[(CoreIRBus *)self lastAppleRemote] isEqual:device])
  {
    [(CoreIRBus *)self setLastAppleRemote:0];
  }

  if ([(CoreRCDevice *)[(CoreIRBus *)self pairedAppleRemote] isEqual:device])
  {
    [(CoreIRBus *)self setPairedAppleRemote:0];
  }

  v5.receiver = self;
  v5.super_class = CoreIRBus;
  [(CoreRCBus *)&v5 willRemoveDevice:device];
}

- (void)setLastAppleRemote:(id)remote
{
  v4 = [(CoreRCBus *)self deviceOnBusEquivalentTo:remote];

  self->_lastAppleRemote = v4;
}

- (void)setPairedAppleRemote:(id)remote
{
  v4 = [(CoreRCBus *)self deviceOnBusEquivalentTo:remote];

  self->_pairedAppleRemote = v4;
}

- (BOOL)setPairedAppleRemote:(id)remote error:(id *)error
{
  [(CoreIRBus *)self setPairedAppleRemote:remote, error];
  [(CoreRCBus *)self didUpdateProperties:&unk_28593C228];
  return 1;
}

- (void)didDispatchCommandFromAppleRemote:(id)remote
{
  if ([(CoreIRBus *)self lastAppleRemote]!= remote)
  {
    [(CoreIRBus *)self setLastAppleRemote:remote];

    [(CoreRCBus *)self didUpdateProperties:&unk_28593C240];
  }
}

@end