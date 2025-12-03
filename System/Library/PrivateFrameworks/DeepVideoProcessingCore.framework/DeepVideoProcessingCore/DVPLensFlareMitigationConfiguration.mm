@interface DVPLensFlareMitigationConfiguration
+ (BOOL)isSupportedRevision:(int64_t)revision;
+ (int64_t)defaultRevision;
+ (void)downloadAssetWithCompletionHandler:(id)handler;
- (DVPLensFlareMitigationConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision;
@end

@implementation DVPLensFlareMitigationConfiguration

- (DVPLensFlareMitigationConfiguration)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow qualityPrioritization:(int64_t)prioritization revision:(int64_t)revision
{
  v19.receiver = self;
  v19.super_class = DVPLensFlareMitigationConfiguration;
  v12 = [(DVPLensFlareMitigationConfiguration *)&v19 init];
  if (!v12)
  {
    NSLog(&cfstr_FailToInitiali.isa);
LABEL_11:
    v17 = 0;
    goto LABEL_6;
  }

  if ((width - 4097) <= 0xFFFFFFFFFFFFEFFFLL)
  {
    NSLog(&cfstr_InvalidInputWi.isa);
    goto LABEL_11;
  }

  if ((height - 2161) <= 0xFFFFFFFFFFFFF78FLL)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_11;
  }

  if (![DVPLensFlareMitigationConfiguration isSupportedRevision:revision])
  {
    NSLog(&cfstr_ErrorInvalidDv_0.isa, revision);
    goto LABEL_11;
  }

  v12->_usePrecomputedFlow = flow;
  v12->_qualityPrioritization = prioritization;
  v12->_frameWidth = width;
  v12->_frameHeight = height;
  v12->_revision = revision;
  v13 = getFramePreferredPixelFormats();
  framePreferredPixelFormats = v12->_framePreferredPixelFormats;
  v12->_framePreferredPixelFormats = v13;

  v15 = getFrameSupportedPixelFormats();
  frameSupportedPixelFormats = v12->_frameSupportedPixelFormats;
  v12->_frameSupportedPixelFormats = v15;

  v17 = v12;
LABEL_6:

  return v17;
}

+ (int64_t)defaultRevision
{
  v2 = +[DVPLensFlareMitigationConfiguration supportedRevisions];
  lastIndex = [v2 lastIndex];

  return lastIndex;
}

+ (BOOL)isSupportedRevision:(int64_t)revision
{
  v4 = +[DVPLensFlareMitigationConfiguration supportedRevisions];
  LOBYTE(revision) = [v4 containsIndex:revision];

  return revision;
}

+ (void)downloadAssetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__DVPLensFlareMitigationConfiguration_downloadAssetWithCompletionHandler___block_invoke;
  v5[3] = &unk_278F53658;
  v6 = handlerCopy;
  v4 = handlerCopy;
  [GGMController downloadMobileAssetWithCompletionHandler:v5];
}

uint64_t __74__DVPLensFlareMitigationConfiguration_downloadAssetWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end