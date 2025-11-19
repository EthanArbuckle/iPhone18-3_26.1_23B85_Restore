@interface GESSAlgRepairTopologyExtended
- (BOOL)run:(id)a3;
@end

@implementation GESSAlgRepairTopologyExtended

- (BOOL)run:(id)a3
{
  v4 = a3;
  objc_msgSend_setAlgStatus_(self, v5, 1, v6);
  if ((objc_msgSend_valid(v4, v7, v8, v9) & 1) != 0 && objc_msgSend_meshType(v4, v10, v11, v12) == 1)
  {
    objc_msgSend_meshImpl(v4, v10, v13, v12);
    operator new();
  }

  objc_msgSend_setAlgStatus_(self, v10, 2, v12);

  return 0;
}

@end