@interface GlassMaterialProvider.Defaults.Observer
- (_TtCCV13DesignLibrary21GlassMaterialProvider8DefaultsP33_851D95C8C30DE99D3FEF66B52C2B2CA58Observer)init;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation GlassMaterialProvider.Defaults.Observer

- (_TtCCV13DesignLibrary21GlassMaterialProvider8DefaultsP33_851D95C8C30DE99D3FEF66B52C2B2CA58Observer)init
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(GlassMaterialProvider.Defaults.Observer *)&v5 init];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    sub_18AFCE094();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v8 = self;
  }

  if (swift_weakLoadStrong())
  {
    sub_18AFA4CC0();
  }

  else
  {
  }

  sub_18AFA6540(v9);
}

@end