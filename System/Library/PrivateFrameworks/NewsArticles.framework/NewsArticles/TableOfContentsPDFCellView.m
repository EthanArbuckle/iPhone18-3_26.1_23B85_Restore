@interface TableOfContentsPDFCellView
- (_TtC12NewsArticles26TableOfContentsPDFCellView)initWithCoder:(id)a3;
@end

@implementation TableOfContentsPDFCellView

- (_TtC12NewsArticles26TableOfContentsPDFCellView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC12NewsArticles26TableOfContentsPDFCellView_imageView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(sub_1D7D2C86C()) initWithFrame_];
  v5 = OBJC_IVAR____TtC12NewsArticles26TableOfContentsPDFCellView_borderLayer;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

@end