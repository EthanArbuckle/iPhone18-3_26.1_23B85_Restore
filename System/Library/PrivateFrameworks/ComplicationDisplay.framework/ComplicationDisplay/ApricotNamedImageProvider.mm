@interface ApricotNamedImageProvider
- (_TtC19ComplicationDisplay25ApricotNamedImageProvider)initWithCoder:(id)coder;
@end

@implementation ApricotNamedImageProvider

- (_TtC19ComplicationDisplay25ApricotNamedImageProvider)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ApricotNamedImageProvider(0);
  coderCopy = coder;
  v5 = [(WidgetNamedImageProvider *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end