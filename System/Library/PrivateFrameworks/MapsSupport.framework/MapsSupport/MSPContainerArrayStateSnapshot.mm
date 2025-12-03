@interface MSPContainerArrayStateSnapshot
- (MSPContainerArrayStateSnapshot)initWithContents:(id)contents;
- (MSPContainerArrayStateSnapshot)initWithContents:(id)contents clientIdentifier:(id)identifier;
- (NSString)description;
@end

@implementation MSPContainerArrayStateSnapshot

- (MSPContainerArrayStateSnapshot)initWithContents:(id)contents
{
  contentsCopy = contents;
  v9.receiver = self;
  v9.super_class = MSPContainerArrayStateSnapshot;
  v5 = [(MSPContainerArrayStateSnapshot *)&v9 init];
  if (v5)
  {
    v6 = [contentsCopy copy];
    contents = v5->_contents;
    v5->_contents = v6;
  }

  return v5;
}

- (MSPContainerArrayStateSnapshot)initWithContents:(id)contents clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = [(MSPContainerArrayStateSnapshot *)self initWithContents:contents];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientIdentifier, identifier);
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPContainerArrayStateSnapshot;
  v4 = [(MSPContainerArrayStateSnapshot *)&v8 description];
  contents = [(MSPContainerArrayStateSnapshot *)self contents];
  v6 = [v3 stringWithFormat:@"<%@ - %@>", v4, contents];

  return v6;
}

@end