@interface CUIPSDLayerGroupStart
- (void)setName:(id)name;
@end

@implementation CUIPSDLayerGroupStart

- (void)setName:(id)name
{
  v5 = +[NSAssertionHandler currentHandler];

  [(NSAssertionHandler *)v5 handleFailureInMethod:a2 object:self file:@"CUIMutablePSDImageRef.mm" lineNumber:154 description:@"Group Names need to be specified on the CUIPSDLayerGroupEnd (because this fits Photoshop's file format), not in CUIPSDLayerGroupStart"];
}

@end