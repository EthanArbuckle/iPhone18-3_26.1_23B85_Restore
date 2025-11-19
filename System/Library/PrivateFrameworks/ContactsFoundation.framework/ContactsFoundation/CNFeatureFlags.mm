@interface CNFeatureFlags
+ (CNFeatureFlags)currentFlags;
+ (id)descriptionOfFeatureFlag:(unint64_t)a3;
- (BOOL)isFeatureEnabled:(unint64_t)a3;
@end

@implementation CNFeatureFlags

+ (CNFeatureFlags)currentFlags
{
  if (currentFlags_cn_once_token_1 != -1)
  {
    +[CNFeatureFlags currentFlags];
  }

  v3 = currentFlags_cn_once_object_1;

  return v3;
}

uint64_t __30__CNFeatureFlags_currentFlags__block_invoke()
{
  currentFlags_cn_once_object_1 = objc_alloc_init(CNFeatureFlags);

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isFeatureEnabled:(unint64_t)a3
{
  v3 = self;
  LOBYTE(self) = 1;
  switch(a3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1EuLL:
    case 0x1FuLL:

      LOBYTE(self) = _os_feature_enabled_impl();
      break;
    case 0x18uLL:
      LODWORD(self) = _os_feature_enabled_impl();
      if (self)
      {

        LOBYTE(self) = [(CNFeatureFlags *)v3 shouldRapportHandleLimitedAccessSyncs];
      }

      break;
    default:
      return self;
  }

  return self;
}

+ (id)descriptionOfFeatureFlag:(unint64_t)a3
{
  if (a3 - 1 > 0x1E)
  {
    return @"Account Cache";
  }

  else
  {
    return off_1E6ED6F40[a3 - 1];
  }
}

@end