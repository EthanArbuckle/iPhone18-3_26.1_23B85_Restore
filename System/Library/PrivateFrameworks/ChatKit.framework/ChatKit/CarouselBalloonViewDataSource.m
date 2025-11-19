@interface CarouselBalloonViewDataSource
- (_TtC7ChatKit29CarouselBalloonViewDataSource)init;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
@end

@implementation CarouselBalloonViewDataSource

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC7ChatKit29CarouselBalloonViewDataSource_items);
  if (!v3)
  {
    return 0;
  }

  if (v3 >> 62)
  {
    return sub_190D581C0();
  }

  return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  item = a3->item;
  v4 = self;
  v6 = sub_190CE8848(v4, v5, item);

  return v6;
}

- (_TtC7ChatKit29CarouselBalloonViewDataSource)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC7ChatKit29CarouselBalloonViewDataSource_items) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CarouselBalloonViewDataSource();
  return [(CarouselBalloonViewDataSource *)&v3 init];
}

@end