@interface BSUIMapService
+ (id)sharedService;
- (_BSUIMapServiceTicket)ticketForBrandLookupWithIMessageUid:(uint64_t)a1;
@end

@implementation BSUIMapService

+ (id)sharedService
{
  objc_opt_self();
  if (qword_27EC8D538 != -1)
  {
    dispatch_once(&qword_27EC8D538, &__block_literal_global);
  }

  v0 = _MergedGlobals;

  return v0;
}

void __31__BSUIMapService_sharedService__block_invoke()
{
  v0 = [BSUIMapService alloc];
  v1 = [MEMORY[0x277CD4EA0] sharedService];
  v4 = v1;
  if (v0)
  {
    v5.receiver = v0;
    v5.super_class = BSUIMapService;
    v2 = objc_msgSendSuper2(&v5, sel_init);
    v0 = v2;
    if (v2)
    {
      objc_storeStrong(&v2->_mapService, v1);
    }
  }

  v3 = _MergedGlobals;
  _MergedGlobals = v0;
}

- (_BSUIMapServiceTicket)ticketForBrandLookupWithIMessageUid:(uint64_t)a1
{
  if (a1)
  {
    v2 = [*(a1 + 8) ticketForBrandLookupWithIMessageUid:a2 traits:0];
    v3 = [_BSUIMapServiceTicket alloc];
    v4 = v2;
    if (v3)
    {
      v7.receiver = v3;
      v7.super_class = _BSUIMapServiceTicket;
      v5 = objc_msgSendSuper2(&v7, sel_init);
      v3 = v5;
      if (v5)
      {
        objc_storeStrong(&v5->_serviceTicket, v2);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end