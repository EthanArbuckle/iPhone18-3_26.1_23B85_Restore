@interface SUUIBrickSwooshArtworkLoader
- (BOOL)loadImageForBrick:(id)brick reason:(int64_t)reason;
- (SUUIBrickSwooshArtworkLoader)initWithArtworkLoader:(id)loader swoosh:(id)swoosh;
- (void)loadImagesForNextPageWithReason:(int64_t)reason;
- (void)setImage:(id)image forRequest:(id)request;
@end

@implementation SUUIBrickSwooshArtworkLoader

- (SUUIBrickSwooshArtworkLoader)initWithArtworkLoader:(id)loader swoosh:(id)swoosh
{
  swooshCopy = swoosh;
  v16.receiver = self;
  v16.super_class = SUUIBrickSwooshArtworkLoader;
  v7 = [(SUUISwooshArtworkLoader *)&v16 initWithArtworkLoader:loader swoosh:swooshCopy];
  if (v7)
  {
    v8 = +[SUUIStyledImageDataConsumer brickConsumer];
    colorScheme = [swooshCopy colorScheme];
    backgroundColor = [colorScheme backgroundColor];
    [v8 setBackgroundColor:backgroundColor];

    [(SUUISwooshArtworkLoader *)v7 setImageDataConsumer:v8];
    [v8 imageSize];
    v12 = v11;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v7->_artworkSize = (v12 * v14);
  }

  return v7;
}

- (BOOL)loadImageForBrick:(id)brick reason:(int64_t)reason
{
  brickCopy = brick;
  artwork = [brickCopy artwork];
  v8 = [artwork URL];

  if (v8)
  {
    v9 = [(SUUISwooshArtworkLoader *)self loadImageForObject:brickCopy URL:v8 reason:reason];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)loadImagesForNextPageWithReason:(int64_t)reason
{
  swooshViewController = [(SUUISwooshArtworkLoader *)self swooshViewController];
  bricks = [swooshViewController bricks];

  v6 = [bricks count];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [bricks objectAtIndex:v9 - 1];
      v11 = [(SUUIBrickSwooshArtworkLoader *)self loadImageForBrick:v10 reason:reason];

      if (v9 >= v7)
      {
        break;
      }

      v8 += v11;
      ++v9;
    }

    while (v8 < 4);
  }
}

- (void)setImage:(id)image forRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  requestIdentifier = [requestCopy requestIdentifier];
  swooshViewController = [(SUUISwooshArtworkLoader *)self swooshViewController];
  bricks = [swooshViewController bricks];
  [swooshViewController indexPathsForVisibleItems];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    v18 = imageCopy;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [bricks objectAtIndex:{objc_msgSend(v15, "item", v18)}];
        if ([(SUUISwooshArtworkLoader *)self artworkRequestIdentifierForObject:v16]== requestIdentifier)
        {
          item = [v15 item];
          imageCopy = v18;
          [swooshViewController setImage:v18 forItemAtIndex:item];

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      imageCopy = v18;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v20.receiver = self;
  v20.super_class = SUUIBrickSwooshArtworkLoader;
  [(SUUISwooshArtworkLoader *)&v20 setImage:imageCopy forRequest:requestCopy];
}

@end