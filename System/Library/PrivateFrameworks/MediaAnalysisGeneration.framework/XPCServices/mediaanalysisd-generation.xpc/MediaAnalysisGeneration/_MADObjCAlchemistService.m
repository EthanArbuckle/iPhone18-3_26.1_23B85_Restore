@interface _MADObjCAlchemistService
- (_MADObjCAlchemistService)init;
- (void)convertAlchemist:(__CVBuffer *)a3 focalLengthPX:(float)a4 preset:(id)a5 resolution:(id)a6 client:(id)a7 completion:(id)a8;
@end

@implementation _MADObjCAlchemistService

- (_MADObjCAlchemistService)init
{
  sub_100009254();
  v4.receiver = self;
  v4.super_class = type metadata accessor for _MADObjCAlchemistService();
  return [(_MADObjCAlchemistService *)&v4 init];
}

- (void)convertAlchemist:(__CVBuffer *)a3 focalLengthPX:(float)a4 preset:(id)a5 resolution:(id)a6 client:(id)a7 completion:(id)a8
{
  v14 = _Block_copy(a8);
  _Block_copy(v14);
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = self;
  sub_1000082E4(v15, v16, v17, a7, v19, v14, a4);
  _Block_release(v14);
  _Block_release(v14);
}

@end