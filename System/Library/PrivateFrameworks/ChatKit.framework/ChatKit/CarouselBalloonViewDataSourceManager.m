@interface CarouselBalloonViewDataSourceManager
- (_TtC7ChatKit36CarouselBalloonViewDataSourceManager)init;
- (id)createInitialDataSource;
@end

@implementation CarouselBalloonViewDataSourceManager

- (_TtC7ChatKit36CarouselBalloonViewDataSourceManager)init
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarouselBalloonViewDataSourceManager();
  v2 = [(PXSectionedDataSourceManager *)&v7 init];
  v3 = objc_allocWithZone(type metadata accessor for CarouselBalloonViewDataSource());
  v4 = v2;
  v5 = [v3 init];
  [(PXSectionedDataSourceManager *)v4 setDataSource:v5 changeDetails:0];

  return v4;
}

- (id)createInitialDataSource
{
  v2 = [objc_allocWithZone(type metadata accessor for CarouselBalloonViewDataSource()) init];

  return v2;
}

@end