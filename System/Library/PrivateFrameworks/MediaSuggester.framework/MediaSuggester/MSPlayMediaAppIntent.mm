@interface MSPlayMediaAppIntent
+ (void)artworkFor:(id)for withCompletion:(id)completion;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSPlayMediaAppIntent

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_22CA1D230(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_22CA1D3B8(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_22CA1DBE4();

  v3 = sub_22CA20E10();

  return v3;
}

+ (void)artworkFor:(id)for withCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  swift_unknownObjectRetain();
  sub_22CA21130();
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_22CA1FC38(v6, sub_22C9DE140, v5);

  sub_22C9D04CC(v6);
}

@end