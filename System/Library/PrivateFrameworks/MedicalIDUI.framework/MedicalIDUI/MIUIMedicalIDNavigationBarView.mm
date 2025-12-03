@interface MIUIMedicalIDNavigationBarView
- (MIUIMedicalIDNavigationBarView)initWithCoder:(id)coder;
- (MIUIMedicalIDNavigationBarView)initWithFrame:(CGRect)frame;
- (MIUIMedicalIDNavigationBarView)initWithHealthStore:(id)store medicalIDData:(id)data showDateUpdated:(BOOL)updated locale:(id)locale;
- (void)setContainerView:(id)view;
- (void)setDateUpdatedLabel:(id)label;
- (void)setImageView:(id)view;
- (void)setStackView:(id)view;
- (void)setTextLabel:(id)label;
- (void)setTitleFont:(id)font;
@end

@implementation MIUIMedicalIDNavigationBarView

- (void)setContainerView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_containerView);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_containerView) = view;
  viewCopy = view;
}

- (void)setStackView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_stackView);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_stackView) = view;
  viewCopy = view;
}

- (void)setImageView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_imageView);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_imageView) = view;
  viewCopy = view;
}

- (void)setTextLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_textLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_textLabel) = label;
  labelCopy = label;
}

- (void)setTitleFont:(id)font
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_titleFont);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_titleFont) = font;
  fontCopy = font;
}

- (void)setDateUpdatedLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_dateUpdatedLabel);
  *(&self->super.super.super.isa + OBJC_IVAR___MIUIMedicalIDNavigationBarView_dateUpdatedLabel) = label;
  labelCopy = label;
}

- (MIUIMedicalIDNavigationBarView)initWithHealthStore:(id)store medicalIDData:(id)data showDateUpdated:(BOOL)updated locale:(id)locale
{
  updatedCopy = updated;
  v9 = sub_2588BBAC8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BBAA8();
  storeCopy = store;
  dataCopy = data;
  v15 = sub_25887AF30(storeCopy, data, updatedCopy, v12);

  return v15;
}

- (MIUIMedicalIDNavigationBarView)initWithCoder:(id)coder
{
  result = sub_2588BDED8();
  __break(1u);
  return result;
}

- (MIUIMedicalIDNavigationBarView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end