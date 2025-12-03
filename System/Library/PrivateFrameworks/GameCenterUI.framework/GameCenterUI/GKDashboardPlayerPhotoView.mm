@interface GKDashboardPlayerPhotoView
- (BOOL)hasImage;
- (GKDashboardPlayerPhotoView)initWithCoder:(id)coder;
- (GKDashboardPlayerPhotoView)initWithFrame:(CGRect)frame;
- (GKPlayerAvatarViewDelegate)delegate;
- (void)commonInit;
- (void)invalidatePhoto;
- (void)layoutSubviews;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)refreshImageWithCompletionHandler:(id)handler;
- (void)setAccessibilityLabel:(id)label;
- (void)setDimmed:(BOOL)dimmed;
- (void)setPlayer:(id)player completionHandler:(id)handler;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation GKDashboardPlayerPhotoView

- (void)commonInit
{
  [(GKDashboardPlayerPhotoView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_new();
  [(GKDashboardPlayerPhotoView *)self setAvatarImageView:v3];

  avatarImageView = [(GKDashboardPlayerPhotoView *)self avatarImageView];
  [avatarImageView setAccessibilityIdentifier:@"UIA.GameCenter.GKDashboardPlayerPhotoView.avatarImageView"];

  avatarImageView2 = [(GKDashboardPlayerPhotoView *)self avatarImageView];
  [(GKDashboardPlayerPhotoView *)self addSubview:avatarImageView2];

  [(GKDashboardPlayerPhotoView *)self setAvatarSize:65537];

  [(GKDashboardPlayerPhotoView *)self setFocusable:0];
}

- (GKDashboardPlayerPhotoView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GKDashboardPlayerPhotoView;
  v3 = [(GKDashboardPlayerPhotoView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(GKDashboardPlayerPhotoView *)v3 commonInit];
  }

  return v4;
}

- (GKDashboardPlayerPhotoView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = GKDashboardPlayerPhotoView;
  v3 = [(GKDashboardPlayerPhotoView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(GKDashboardPlayerPhotoView *)v3 commonInit];
  }

  return v4;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = GKDashboardPlayerPhotoView;
  [(GKDashboardPlayerPhotoView *)&v21 layoutSubviews];
  [(GKDashboardPlayerPhotoView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  avatarImageView = [(GKDashboardPlayerPhotoView *)self avatarImageView];
  [avatarImageView setFrame:{v4, v6, v8, v10}];

  [(GKDashboardPlayerPhotoView *)self bounds];
  v13 = v12 * 0.5;
  avatarImageView2 = [(GKDashboardPlayerPhotoView *)self avatarImageView];
  layer = [avatarImageView2 layer];
  [layer setCornerRadius:v13];

  [(GKDashboardPlayerPhotoView *)self bounds];
  [(GKDashboardPlayerPhotoView *)self _setCornerRadius:v16 * 0.5];
  [(GKDashboardPlayerPhotoView *)self setClipsToBounds:1];
  avatarImageView3 = [(GKDashboardPlayerPhotoView *)self avatarImageView];
  [avatarImageView3 setClipsToBounds:1];

  avatarImageView4 = [(GKDashboardPlayerPhotoView *)self avatarImageView];
  layer2 = [avatarImageView4 layer];
  [layer2 setMasksToBounds:1];

  avatarImageView5 = [(GKDashboardPlayerPhotoView *)self avatarImageView];
  [avatarImageView5 setContentMode:2];
}

- (BOOL)hasImage
{
  player = [(GKDashboardPlayerPhotoView *)self player];
  hasPhoto = [player hasPhoto];

  return hasPhoto;
}

- (void)setPlayer:(id)player completionHandler:(id)handler
{
  playerCopy = player;
  handlerCopy = handler;
  internal = [(GKPlayer *)self->_player internal];
  playerID = [internal playerID];
  internal2 = [playerCopy internal];
  playerID2 = [internal2 playerID];

  if (playerID != playerID2)
  {
    objc_storeStrong(&self->_player, player);
    if (playerCopy)
    {
      v13 = dispatch_get_global_queue(0, 0);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __58__GKDashboardPlayerPhotoView_setPlayer_completionHandler___block_invoke;
      v15[3] = &unk_27966A958;
      v15[4] = self;
      v16 = handlerCopy;
      dispatch_async(v13, v15);
    }
  }

  if (!self->_player)
  {
    avatarImageView = [(GKDashboardPlayerPhotoView *)self avatarImageView];
    [avatarImageView setImage:0];
  }
}

void __58__GKDashboardPlayerPhotoView_setPlayer_completionHandler___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__GKDashboardPlayerPhotoView_setPlayer_completionHandler___block_invoke_2;
  v2[3] = &unk_27966A4A8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 refreshImageWithCompletionHandler:v2];
}

uint64_t __58__GKDashboardPlayerPhotoView_setPlayer_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setAccessibilityLabel:(id)label
{
  v6.receiver = self;
  v6.super_class = GKDashboardPlayerPhotoView;
  labelCopy = label;
  [(GKDashboardPlayerPhotoView *)&v6 setAccessibilityLabel:labelCopy];
  v5 = [(GKDashboardPlayerPhotoView *)self avatarImageView:v6.receiver];
  [v5 setAccessibilityLabel:labelCopy];
}

- (void)setDimmed:(BOOL)dimmed
{
  self->_dimmed = dimmed;
  if (dimmed)
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 1.0;
  }

  layer = [(GKDashboardPlayerPhotoView *)self layer];
  *&v4 = v3;
  [layer setOpacity:v4];
}

- (void)refreshImageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277D0C2A0];
  v6 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v7 = GKOSLoggers();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(GKDashboardPlayerPhotoView *)v6 refreshImageWithCompletionHandler:v8, v9, v10, v11, v12, v13, v14];
  }

  v15 = MEMORY[0x277D0C020];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDashboardPlayerPhotoView.m", 143, "-[GKDashboardPlayerPhotoView refreshImageWithCompletionHandler:]"];
  v17 = [v15 dispatchGroupWithName:v16];

  player = [(GKDashboardPlayerPhotoView *)self player];
  internal = [player internal];
  playerID = [internal playerID];

  objc_initWeak(&location, self);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke;
  v31[3] = &unk_27966AAF0;
  objc_copyWeak(&v34, &location);
  v31[4] = self;
  v21 = playerID;
  v32 = v21;
  v22 = v17;
  v33 = v22;
  [v22 perform:v31];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke_16;
  v26[3] = &unk_27966AB18;
  v23 = v22;
  v27 = v23;
  selfCopy = self;
  v24 = v21;
  v29 = v24;
  v25 = handlerCopy;
  v30 = v25;
  [v23 notifyOnMainQueueWithBlock:v26];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

void __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained player];
    v7 = [a1[4] avatarSize];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_27966AAC8;
    v9 = a1[5];
    v10 = v5;
    v11 = a1[6];
    v12 = v3;
    [v6 playerAvatarImageWithSize:v7 completionHandler:v8];
  }

  else
  {
    v3[2](v3);
  }
}

void __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = MEMORY[0x277D0C2A0];
  v9 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v10 = GKOSLoggers();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke_2_cold_1(a1, v9, v6);
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) player];
  v13 = [v12 internal];
  v14 = [v13 playerID];
  LODWORD(v11) = [v11 isEqualToString:v14];

  if (v11)
  {
    [*(a1 + 48) setResult:v6];
  }

  else
  {
    v15 = *v8;
    if (!*v8)
    {
      v16 = GKOSLoggers();
      v15 = *v8;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke_2_cold_2(v15, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke_16(uint64_t a1)
{
  v2 = [*(a1 + 32) result];

  if (v2)
  {
    v3 = [*(a1 + 32) result];
    [v3 size];
    v5 = v4;
    [v3 size];
    if (v5 != v6)
    {
      [v3 size];
      v8 = v7;
      [v3 size];
      if (v8 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = [v3 _gkCropImageIntoSquare:{v10, v10}];

      v3 = v11;
    }

    v12 = [*(a1 + 40) avatarImageView];
    [v12 setImage:v3];
  }

  else
  {
    v13 = *(a1 + 48);
    v14 = [*(a1 + 40) player];
    v15 = [v14 internal];
    v16 = [v15 playerID];
    LODWORD(v13) = [v13 isEqualToString:v16];

    if (!v13)
    {
      goto LABEL_11;
    }

    v3 = [*(a1 + 40) player];
    v12 = [v3 placeholderImageWithPhotoSize:{objc_msgSend(*(a1 + 40), "avatarSize")}];
    v17 = [*(a1 + 40) avatarImageView];
    [v17 setImage:v12];
  }

LABEL_11:
  v18 = [*(a1 + 40) delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [*(a1 + 40) delegate];
    [v20 didSetPlayerAvatarImage:*(a1 + 40)];
  }

  v21 = [*(a1 + 40) delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [*(a1 + 40) delegate];
    [v23 avatarContentIsReady];
  }

  result = *(a1 + 56);
  if (result)
  {
    v25 = *(result + 16);

    return v25();
  }

  return result;
}

- (void)invalidatePhoto
{
  player = [(GKDashboardPlayerPhotoView *)self player];

  if (player)
  {
    v4 = MEMORY[0x277D0C2A0];
    v5 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v6 = GKOSLoggers();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(GKDashboardPlayerPhotoView *)v5 invalidatePhoto:v7];
    }

    [(GKDashboardPlayerPhotoView *)self refreshImageWithCompletionHandler:0];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([(GKDashboardPlayerPhotoView *)self isUserInteractionEnabled:began])
  {
    delegate = [(GKDashboardPlayerPhotoView *)self delegate];

    if (delegate)
    {
      v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
      [(GKDashboardPlayerPhotoView *)self setTintColor:v6];
    }
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(GKDashboardPlayerPhotoView *)self isUserInteractionEnabled:ended])
  {
    delegate = [(GKDashboardPlayerPhotoView *)self delegate];

    if (delegate)
    {
      [(GKDashboardPlayerPhotoView *)self setTintColor:0];
      delegate2 = [(GKDashboardPlayerPhotoView *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        delegate3 = [(GKDashboardPlayerPhotoView *)self delegate];
        [delegate3 didSelectPlayerAvatarView:self];
      }
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(GKDashboardPlayerPhotoView *)self isUserInteractionEnabled:cancelled])
  {
    delegate = [(GKDashboardPlayerPhotoView *)self delegate];

    if (delegate)
    {

      [(GKDashboardPlayerPhotoView *)self setTintColor:0];
    }
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v19.receiver = self;
  v19.super_class = GKDashboardPlayerPhotoView;
  [(GKDashboardPlayerPhotoView *)&v19 pressesEnded:endedCopy withEvent:event];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = endedCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v15 + 1) + 8 * i) type] == 4)
        {
          if ([(GKDashboardPlayerPhotoView *)self isUserInteractionEnabled])
          {
            delegate = [(GKDashboardPlayerPhotoView *)self delegate];
            v13 = objc_opt_respondsToSelector();

            if (v13)
            {
              delegate2 = [(GKDashboardPlayerPhotoView *)self delegate];
              [delegate2 didSelectPlayerAvatarView:self];
            }
          }

          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (GKPlayerAvatarViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __64__GKDashboardPlayerPhotoView_refreshImageWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v4 player];
  v8 = [v7 internal];
  v9 = [v8 playerID];
  v10 = 138412802;
  v11 = v5;
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a3;
  _os_log_debug_impl(&dword_24DE53000, v6, OS_LOG_TYPE_DEBUG, "GKDashboardPlayerPhotoView.refreshImageWithCompletionHandler.playerAvatarImageWithSize: currentPlayerID=%@ strongSelf.player.internal.playerID=%@ || image=%@", &v10, 0x20u);
}

@end