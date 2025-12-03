@interface OPackCoder
- (id)pack:(id)pack status:(int *)status;
- (id)unpack:(id)unpack status:(int *)status;
@end

@implementation OPackCoder

- (id)unpack:(id)unpack status:(int *)status
{
  unpackCopy = unpack;
  [unpackCopy bytes];
  [unpackCopy length];

  v5 = OPACKDecodeBytes();

  return v5;
}

- (id)pack:(id)pack status:(int *)status
{
  v4 = MEMORY[0x216055DF0](pack, 0, status);

  return v4;
}

@end