@interface CAFMedia
+ (void)load;
- (NSArray)mediaSourceServices;
- (void)registerObserver:(id)observer;
- (void)tuneToMediaItem:(id)item inSource:(id)source completion:(id)completion;
- (void)tuneToMediaItemIdentifier:(id)identifier inSourceWithIdentifier:(id)withIdentifier completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFMedia

- (void)tuneToMediaItem:(id)item inSource:(id)source completion:(id)completion
{
  itemCopy = item;
  sourceCopy = source;
  completionCopy = completion;
  v11 = CAFGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFMedia(Utilties) tuneToMediaItem:inSource:completion:];
  }

  identifier = [itemCopy identifier];
  identifier2 = [sourceCopy identifier];
  [(CAFMedia *)self tuneToMediaItemIdentifier:identifier inSourceWithIdentifier:identifier2 completion:completionCopy];
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

- (void)tuneToMediaItemIdentifier:(id)identifier inSourceWithIdentifier:(id)withIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  completionCopy = completion;
  v11 = CAFGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [CAFMedia(Utilties) tuneToMediaItemIdentifier:inSourceWithIdentifier:completion:];
  }

  v12 = [(CAFAccessory *)self car];
  nowPlayingInformation = [v12 nowPlayingInformation];
  nowPlaying = [nowPlayingInformation nowPlaying];

  if (nowPlaying)
  {
    [nowPlaying tuneToIdentifier:identifierCopy sourceIdentifier:withIdentifierCopy completion:completionCopy];
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
    v24 = completionCopy;
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
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMedia;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABD38])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFMedia;
  [(CAFAccessory *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2846ABD38])
  {
    v5 = observerCopy;
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
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:@"0x0000000014000006"];

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