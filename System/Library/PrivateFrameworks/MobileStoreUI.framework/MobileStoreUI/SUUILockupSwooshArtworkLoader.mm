@interface SUUILockupSwooshArtworkLoader
- (BOOL)loadImageForItem:(id)item reason:(int64_t)reason;
- (BOOL)loadImageForVideo:(id)video reason:(int64_t)reason;
- (SUUILockupSwooshArtworkLoader)initWithArtworkLoader:(id)loader swoosh:(id)swoosh;
- (id)placeholderImageForItem:(id)item;
- (id)placeholderImageForVideo:(id)video;
- (void)loadImagesForNextPageWithReason:(int64_t)reason;
- (void)setImage:(id)image forRequest:(id)request;
@end

@implementation SUUILockupSwooshArtworkLoader

- (SUUILockupSwooshArtworkLoader)initWithArtworkLoader:(id)loader swoosh:(id)swoosh
{
  swooshCopy = swoosh;
  v13.receiver = self;
  v13.super_class = SUUILockupSwooshArtworkLoader;
  v7 = [(SUUISwooshArtworkLoader *)&v13 initWithArtworkLoader:loader swoosh:swooshCopy];
  if (v7)
  {
    artworkContext = [swooshCopy artworkContext];
    context = v7->_context;
    v7->_context = artworkContext;

    videoImageConsumer = [swooshCopy videoImageConsumer];
    videoImageConsumer = v7->_videoImageConsumer;
    v7->_videoImageConsumer = videoImageConsumer;
  }

  return v7;
}

- (BOOL)loadImageForItem:(id)item reason:(int64_t)reason
{
  itemCopy = item;
  v7 = [(SUUIItemArtworkContext *)self->_context URLForItem:itemCopy];
  if (v7)
  {
    v8 = objc_alloc_init(SUUIArtworkRequest);
    v9 = [(SUUIItemArtworkContext *)self->_context dataConsumerForItem:itemCopy];
    [(SUUIArtworkRequest *)v8 setDataConsumer:v9];

    [(SUUIArtworkRequest *)v8 setURL:v7];
    v10 = [(SUUISwooshArtworkLoader *)self loadImageForObject:itemCopy artworkRequest:v8 reason:reason];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)loadImageForVideo:(id)video reason:(int64_t)reason
{
  videoCopy = video;
  [(SUUIVideoImageDataConsumer *)self->_videoImageConsumer landscapeSize];
  v8 = v7;
  v10 = v9;
  artworks = [videoCopy artworks];
  v12 = [artworks bestArtworkForScaledSize:{v8, v10}];
  v13 = [v12 URL];

  if (v13)
  {
    v14 = objc_alloc_init(SUUIArtworkRequest);
    [(SUUIArtworkRequest *)v14 setDataConsumer:self->_videoImageConsumer];
    [(SUUIArtworkRequest *)v14 setURL:v13];
    v15 = [(SUUISwooshArtworkLoader *)self loadImageForObject:videoCopy artworkRequest:v14 reason:reason];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)placeholderImageForItem:(id)item
{
  itemCopy = item;
  swooshViewController = [(SUUISwooshArtworkLoader *)self swooshViewController];
  artworkContext = [swooshViewController artworkContext];
  v7 = [artworkContext placeholderImageForItem:itemCopy];

  return v7;
}

- (id)placeholderImageForVideo:(id)video
{
  videoPlaceholderImage = self->_videoPlaceholderImage;
  if (!videoPlaceholderImage)
  {
    v5 = [(SUUIVideoImageDataConsumer *)self->_videoImageConsumer imageForColor:0 orientation:2];
    v6 = self->_videoPlaceholderImage;
    self->_videoPlaceholderImage = v5;

    videoPlaceholderImage = self->_videoPlaceholderImage;
  }

  return videoPlaceholderImage;
}

- (void)loadImagesForNextPageWithReason:(int64_t)reason
{
  swooshViewController = [(SUUISwooshArtworkLoader *)self swooshViewController];
  lockups = [swooshViewController lockups];

  v6 = [lockups count];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [lockups objectAtIndex:v9 - 1];
      item = [v10 item];
      if (item)
      {
        v12 = [(SUUILockupSwooshArtworkLoader *)self loadImageForItem:item reason:reason];
        videos = [item videos];
        firstObject = [videos firstObject];

        if (firstObject)
        {
          [(SUUILockupSwooshArtworkLoader *)self loadImageForVideo:firstObject reason:reason];
        }

        v8 += v12;
      }

      if (v9 >= v7)
      {
        break;
      }

      ++v9;
    }

    while (v8 < 7);
  }
}

- (void)setImage:(id)image forRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  requestCopy = request;
  requestIdentifier = [requestCopy requestIdentifier];
  swooshViewController = [(SUUISwooshArtworkLoader *)self swooshViewController];
  lockups = [swooshViewController lockups];
  [swooshViewController indexPathsForVisibleItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    v18 = swooshViewController;
    v19 = imageCopy;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [lockups objectAtIndex:{objc_msgSend(v13, "item")}];
        item = [v14 item];
        if (item)
        {
          if ([(SUUISwooshArtworkLoader *)self artworkRequestIdentifierForObject:item]== requestIdentifier)
          {
            swooshViewController = v18;
            imageCopy = v19;
            [v18 setImage:v19 forItemAtIndex:{objc_msgSend(v13, "item")}];
LABEL_16:

            goto LABEL_17;
          }

          videos = [item videos];
          firstObject = [videos firstObject];

          if (firstObject && [(SUUISwooshArtworkLoader *)self artworkRequestIdentifierForObject:firstObject]== requestIdentifier)
          {
            swooshViewController = v18;
            imageCopy = v19;
            [v18 setVideoThumbnail:v19 forItemAtIndex:{objc_msgSend(v13, "item")}];

            goto LABEL_16;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      swooshViewController = v18;
      imageCopy = v19;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v23.receiver = self;
  v23.super_class = SUUILockupSwooshArtworkLoader;
  [(SUUISwooshArtworkLoader *)&v23 setImage:imageCopy forRequest:requestCopy];
}

@end