@interface CUINamedExternalLink
- (NSString)assetPackIdentifier;
@end

@implementation CUINamedExternalLink

- (NSString)assetPackIdentifier
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition assetPackIdentifier];
}

@end