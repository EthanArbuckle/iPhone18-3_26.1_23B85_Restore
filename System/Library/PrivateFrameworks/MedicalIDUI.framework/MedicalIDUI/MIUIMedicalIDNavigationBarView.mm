@interface MIUIMedicalIDNavigationBarView
- (MIUIMedicalIDNavigationBarView)initWithCoder:(id)a3;
- (MIUIMedicalIDNavigationBarView)initWithFrame:(CGRect)a3;
- (MIUIMedicalIDNavigationBarView)initWithHealthStore:(id)a3 medicalIDData:(id)a4 showDateUpdated:(BOOL)a5 locale:(id)a6;
- (void)setContainerView:(id)a3;
- (void)setDateUpdatedLabel:(id)a3;
- (void)setImageView:(id)a3;
- (void)setStackView:(id)a3;
- (void)setTextLabel:(id)a3;
- (void)setTitleFont:(id)a3;
@end

@implementation MIUIMedicalIDNavigationBarView

- (void)setContainerView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_containerView);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_containerView) = a3;
  v3 = a3;
}

- (void)setStackView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_stackView);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_stackView) = a3;
  v3 = a3;
}

- (void)setImageView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_imageView);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_imageView) = a3;
  v3 = a3;
}

- (void)setTextLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_textLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_textLabel) = a3;
  v3 = a3;
}

- (void)setTitleFont:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_titleFont);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_titleFont) = a3;
  v3 = a3;
}

- (void)setDateUpdatedLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_dateUpdatedLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_dateUpdatedLabel) = a3;
  v3 = a3;
}

- (MIUIMedicalIDNavigationBarView)initWithHealthStore:(id)a3 medicalIDData:(id)a4 showDateUpdated:(BOOL)a5 locale:(id)a6
{
  v6 = a5;
  v9 = sub_2588BBAC8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BBAA8();
  v13 = a3;
  v14 = a4;
  v15 = sub_25887AF30(v13, a4, v6, v12);

  return v15;
}

- (MIUIMedicalIDNavigationBarView)initWithCoder:(id)a3
{
  result = sub_2588BDED8();
  __break(1u);
  return result;
}

- (MIUIMedicalIDNavigationBarView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end