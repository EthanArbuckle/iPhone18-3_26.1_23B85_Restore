@interface DVPLensFlareMitigationConfiguration
+ (BOOL)isSupportedRevision:(int64_t)a3;
+ (int64_t)defaultRevision;
+ (void)downloadAssetWithCompletionHandler:(id)a3;
- (DVPLensFlareMitigationConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 qualityPrioritization:(int64_t)a6 revision:(int64_t)a7;
@end

@implementation DVPLensFlareMitigationConfiguration

- (DVPLensFlareMitigationConfiguration)initWithFrameWidth:(int64_t)a3 frameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 qualityPrioritization:(int64_t)a6 revision:(int64_t)a7
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

  if ((a3 - 4097) <= 0xFFFFFFFFFFFFEFFFLL)
  {
    NSLog(&cfstr_InvalidInputWi.isa);
    goto LABEL_11;
  }

  if ((a4 - 2161) <= 0xFFFFFFFFFFFFF78FLL)
  {
    NSLog(&cfstr_InvalidInputHe.isa);
    goto LABEL_11;
  }

  if (![DVPLensFlareMitigationConfiguration isSupportedRevision:a7])
  {
    NSLog(&cfstr_ErrorInvalidDv_0.isa, a7);
    goto LABEL_11;
  }

  v12->_usePrecomputedFlow = a5;
  v12->_qualityPrioritization = a6;
  v12->_frameWidth = a3;
  v12->_frameHeight = a4;
  v12->_revision = a7;
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
  v3 = [v2 lastIndex];

  return v3;
}

+ (BOOL)isSupportedRevision:(int64_t)a3
{
  v4 = +[DVPLensFlareMitigationConfiguration supportedRevisions];
  LOBYTE(a3) = [v4 containsIndex:a3];

  return a3;
}

+ (void)downloadAssetWithCompletionHandler:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__DVPLensFlareMitigationConfiguration_downloadAssetWithCompletionHandler___block_invoke;
  v5[3] = &unk_278F53658;
  v6 = v3;
  v4 = v3;
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