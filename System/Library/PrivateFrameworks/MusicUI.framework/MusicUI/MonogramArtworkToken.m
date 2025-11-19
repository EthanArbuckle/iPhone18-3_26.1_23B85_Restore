@interface MonogramArtworkToken
- (id)copyWithZone:(void *)a3;
- (id)stringRepresentation;
@end

@implementation MonogramArtworkToken

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_216C4931C(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_21700F7B4();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

- (id)stringRepresentation
{
  v2 = self;
  sub_216C49470();
  v4 = v3;

  if (v4)
  {
    v5 = sub_21700E4D4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end