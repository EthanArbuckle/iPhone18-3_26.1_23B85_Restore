@interface Diagnostics
- (id)attachmentsForParameters:(id)a3;
@end

@implementation Diagnostics

- (id)attachmentsForParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_100009810();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v10.value._rawValue = v4;
  v6 = Diagnostics.attachments(forParameters:)(v10);

  if (v6)
  {
    v7.super.isa = sub_1000098B0().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

@end