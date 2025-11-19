@interface ReverseSiphonDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ReverseSiphonDelegate)init;
- (void)AudioAvailabilityCallback:(unint64_t)a3 atSample:(unint64_t)a4 with:(id)a5;
@end

@implementation ReverseSiphonDelegate

- (void)AudioAvailabilityCallback:(unint64_t)a3 atSample:(unint64_t)a4 with:(id)a5
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a5;
  mAvailabilityCallback = self->mAvailabilityCallback;
  if (mAvailabilityCallback)
  {
    mAvailabilityCallback(a3, a4, self->mAvailabilityData);
  }

  v8[2](v8, 0);

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(ReverseSiphonDelegate *)self reverseInterface];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  [v5 activate];

  return 1;
}

- (ReverseSiphonDelegate)init
{
  v9.receiver = self;
  v9.super_class = ReverseSiphonDelegate;
  v2 = [(ReverseSiphonDelegate *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->mAvailabilityCallback = 0;
    v2->mLapseCallback = [ReverseSiphonDelegate init]::$_0::__invoke;
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677A438];
    [(ReverseSiphonDelegate *)v3 setReverseInterface:v4];

    v5 = [MEMORY[0x277CCAE98] anonymousListener];
    [(ReverseSiphonDelegate *)v3 setReverseListener:v5];

    v6 = [(ReverseSiphonDelegate *)v3 reverseListener];
    [v6 setDelegate:v3];

    v7 = [(ReverseSiphonDelegate *)v3 reverseListener];
    [v7 activate];
  }

  return v3;
}

@end