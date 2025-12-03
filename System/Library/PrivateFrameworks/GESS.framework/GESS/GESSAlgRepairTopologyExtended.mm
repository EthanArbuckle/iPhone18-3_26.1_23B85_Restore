@interface GESSAlgRepairTopologyExtended
- (BOOL)run:(id)run;
@end

@implementation GESSAlgRepairTopologyExtended

- (BOOL)run:(id)run
{
  runCopy = run;
  objc_msgSend_setAlgStatus_(self, v5, 1, v6);
  if ((objc_msgSend_valid(runCopy, v7, v8, v9) & 1) != 0 && objc_msgSend_meshType(runCopy, v10, v11, v12) == 1)
  {
    objc_msgSend_meshImpl(runCopy, v10, v13, v12);
    operator new();
  }

  objc_msgSend_setAlgStatus_(self, v10, 2, v12);

  return 0;
}

@end