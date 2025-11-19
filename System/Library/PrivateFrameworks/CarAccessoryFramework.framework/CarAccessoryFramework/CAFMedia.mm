@interface CAFMedia
+ (void)load;
- (NSArray)mediaSourceServices;
- (void)registerObserver:(id)a3;
- (void)tuneToMediaItem:(id)a3 inSource:(id)a4 completion:(id)a5;
- (void)tuneToMediaItemIdentifier:(id)a3 inSourceWithIdentifier:(id)a4 completion:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFMedia

- (void)tuneToMediaItem:(id)a3 inSource:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFMedia(Utilties) tuneToMediaItem:inSource:completion:];
  }

  v12 = [v8 identifier];
  v13 = [v9 identifier];
  [(CAFMedia *)self tuneToMediaItemIdentifier:v12 inSourceWithIdentifier:v13 completion:v10];
}

void __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

void __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

void __72__CAFMedia_Utilties__tuneToFrequency_inSourceWithIdentifier_completion___block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)tuneToMediaItemIdentifier:(id)a3 inSourceWithIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CAFGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFMedia(Utilties) tuneToMediaItemIdentifier:inSourceWithIdentifier:completion:];
  }

  v12 = [(CAFAccessory *)self car];
  v13 = [v12 nowPlayingInformation];
  v14 = [v13 nowPlaying];

  if (v14)
  {
    [v14 tuneToIdentifier:v8 sourceIdentifier:v9 completion:v10];
  }

  else
  {
    v15 = CAFGeneralLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CAFMedia(Utilties) *)v15 tuneToFrequency:v16 inSourceWithIdentifier:v17 completion:v18, v19, v20, v21, v22];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__CAFMedia_Utilties__tuneToMediaItemIdentifier_inSourceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v24 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __82__CAFMedia_Utilties__tuneToMediaItemIdentifier_inSourceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:CAFErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, v2);
  }
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFMedia;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABD38])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFMedia;
  [(CAFAccessory *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2846ABD38])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFMedia;
  [(CAFAccessory *)&v6 unregisterObserver:v5];
}

- (NSArray)mediaSourceServices
{
  v3 = [(CAFAccessory *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [objc_opt_class() accessoryIdentifier];
  [v6 validateRegisteredForAccessory:v7 service:@"0x0000000014000006"];

  objc_opt_class();
  v8 = [(CAFAccessory *)self servicesForType:@"0x0000000014000006"];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end