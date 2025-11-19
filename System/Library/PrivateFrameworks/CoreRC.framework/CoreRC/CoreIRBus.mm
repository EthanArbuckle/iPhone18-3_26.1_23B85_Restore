@interface CoreIRBus
- (BOOL)setPairedAppleRemote:(id)a3 error:(id *)a4;
- (CoreIRBus)init;
- (CoreIRBus)initWithBus:(id)a3;
- (CoreIRBus)initWithCoder:(id)a3;
- (id)description;
- (void)dealloc;
- (void)didDispatchCommandFromAppleRemote:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLastAppleRemote:(id)a3;
- (void)setPairedAppleRemote:(id)a3;
- (void)willRemoveDevice:(id)a3;
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

- (CoreIRBus)initWithBus:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = CoreIRBus;
    v5 = [(CoreRCBus *)&v7 initWithBus:a3];
    if (v5)
    {
      -[CoreIRBus setPairedAppleRemote:](v5, "setPairedAppleRemote:", [a3 pairedAppleRemote]);
      -[CoreIRBus setLastAppleRemote:](v5, "setLastAppleRemote:", [a3 lastAppleRemote]);
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (CoreIRBus)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CoreIRBus;
  v4 = [(CoreRCBus *)&v6 initWithCoder:?];
  if (v4)
  {
    -[CoreIRBus setPairedAppleRemote:](v4, "setPairedAppleRemote:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"pairedAppleRemote"]);
    -[CoreIRBus setLastAppleRemote:](v4, "setLastAppleRemote:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"lastAppleRemote"]);
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CoreIRBus;
  [(CoreRCBus *)&v5 encodeWithCoder:?];
  [a3 encodeObject:-[CoreIRBus pairedAppleRemote](self forKey:{"pairedAppleRemote"), @"pairedAppleRemote"}];
  [a3 encodeObject:-[CoreIRBus lastAppleRemote](self forKey:{"lastAppleRemote"), @"lastAppleRemote"}];
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
    v4 = [(CoreIRBus *)self pairedAppleRemote];
  }

  else
  {
    v4 = @"N";
  }

  [v3 appendFormat:@" Paired: %@;", v4];
  if ([(CoreIRBus *)self lastAppleRemote])
  {
    [v3 appendFormat:@" Last Apple Remote: %@;", -[CoreIRBus lastAppleRemote](self, "lastAppleRemote")];
  }

  return v3;
}

- (void)willRemoveDevice:(id)a3
{
  if ([(CoreRCDevice *)[(CoreIRBus *)self lastAppleRemote] isEqual:a3])
  {
    [(CoreIRBus *)self setLastAppleRemote:0];
  }

  if ([(CoreRCDevice *)[(CoreIRBus *)self pairedAppleRemote] isEqual:a3])
  {
    [(CoreIRBus *)self setPairedAppleRemote:0];
  }

  v5.receiver = self;
  v5.super_class = CoreIRBus;
  [(CoreRCBus *)&v5 willRemoveDevice:a3];
}

- (void)setLastAppleRemote:(id)a3
{
  v4 = [(CoreRCBus *)self deviceOnBusEquivalentTo:a3];

  self->_lastAppleRemote = v4;
}

- (void)setPairedAppleRemote:(id)a3
{
  v4 = [(CoreRCBus *)self deviceOnBusEquivalentTo:a3];

  self->_pairedAppleRemote = v4;
}

- (BOOL)setPairedAppleRemote:(id)a3 error:(id *)a4
{
  [(CoreIRBus *)self setPairedAppleRemote:a3, a4];
  [(CoreRCBus *)self didUpdateProperties:&unk_28593C228];
  return 1;
}

- (void)didDispatchCommandFromAppleRemote:(id)a3
{
  if ([(CoreIRBus *)self lastAppleRemote]!= a3)
  {
    [(CoreIRBus *)self setLastAppleRemote:a3];

    [(CoreRCBus *)self didUpdateProperties:&unk_28593C240];
  }
}

@end