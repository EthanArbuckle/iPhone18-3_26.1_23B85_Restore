@interface MSPContainerArrayStateSnapshot
- (MSPContainerArrayStateSnapshot)initWithContents:(id)a3;
- (MSPContainerArrayStateSnapshot)initWithContents:(id)a3 clientIdentifier:(id)a4;
- (NSString)description;
@end

@implementation MSPContainerArrayStateSnapshot

- (MSPContainerArrayStateSnapshot)initWithContents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSPContainerArrayStateSnapshot;
  v5 = [(MSPContainerArrayStateSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contents = v5->_contents;
    v5->_contents = v6;
  }

  return v5;
}

- (MSPContainerArrayStateSnapshot)initWithContents:(id)a3 clientIdentifier:(id)a4
{
  v7 = a4;
  v8 = [(MSPContainerArrayStateSnapshot *)self initWithContents:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientIdentifier, a4);
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPContainerArrayStateSnapshot;
  v4 = [(MSPContainerArrayStateSnapshot *)&v8 description];
  v5 = [(MSPContainerArrayStateSnapshot *)self contents];
  v6 = [v3 stringWithFormat:@"<%@ - %@>", v4, v5];

  return v6;
}

@end