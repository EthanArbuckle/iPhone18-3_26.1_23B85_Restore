@interface OPackCoder
- (id)pack:(id)a3 status:(int *)a4;
- (id)unpack:(id)a3 status:(int *)a4;
@end

@implementation OPackCoder

- (id)unpack:(id)a3 status:(int *)a4
{
  v4 = a3;
  [v4 bytes];
  [v4 length];

  v5 = OPACKDecodeBytes();

  return v5;
}

- (id)pack:(id)a3 status:(int *)a4
{
  v4 = MEMORY[0x216055DF0](a3, 0, a4);

  return v4;
}

@end