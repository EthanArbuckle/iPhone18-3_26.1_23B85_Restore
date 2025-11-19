@interface StatusBarSafeAreaView
- (_TtC19ContactlessReaderUI21StatusBarSafeAreaView)initWithCoder:(id)a3;
- (_TtC19ContactlessReaderUI21StatusBarSafeAreaView)initWithNibName:(id)a3 bundle:(id)a4;
- (uint64_t)viewSafeAreaInsetsDidChange;
- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4;
@end

@implementation StatusBarSafeAreaView

- (_TtC19ContactlessReaderUI21StatusBarSafeAreaView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_safeRect);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = self + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_maxAllowedSize;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = (self + OBJC_IVAR____TtC19ContactlessReaderUI21StatusBarSafeAreaView_cornerRadii);
  *v5 = 0u;
  v5[1] = 0u;
  result = sub_2440D38D0();
  __break(1u);
  return result;
}

- (_TtC19ContactlessReaderUI21StatusBarSafeAreaView)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_boundingPathMayHaveChangedForView:(id)a3 relativeToBoundsOriginOnly:(BOOL)a4
{
  if (a3)
  {
    [a3 layoutSubviews];
  }

  else
  {
    __break(1u);
  }
}

- (uint64_t)viewSafeAreaInsetsDidChange
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDC0A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_243F4DF68();
  sub_243F5F574(v3, v2, &qword_27EDC0A50);
  v4 = sub_2440D11E0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    return sub_243F5EED4(v2, &qword_27EDC0A50);
  }

  v7 = sub_2440D11C0();
  v8 = sub_2440D3460();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_243F48000, v7, v8, "safeAreaInsetsDidChange", v9, 2u);
    MEMORY[0x245D58570](v9, -1, -1);
  }

  return (*(v5 + 8))(v2, v4);
}

@end