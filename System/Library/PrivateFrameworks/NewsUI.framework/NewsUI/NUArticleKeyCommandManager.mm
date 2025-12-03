@interface NUArticleKeyCommandManager
- (UIScrollView)scrollView;
- (id)keyCommandsWithSelector:(SEL)selector;
- (void)handleKey:(id)key flags:(int64_t)flags;
- (void)handleKeyCommand:(id)command;
@end

@implementation NUArticleKeyCommandManager

- (id)keyCommandsWithSelector:(SEL)selector
{
  array = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277D76B68];
  v17 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B68] modifierFlags:0 action:selector];
  [v17 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v17];
  v16 = [MEMORY[0x277D75650] keyCommandWithInput:v5 modifierFlags:0x80000 action:selector];
  [v16 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v16];
  v6 = *MEMORY[0x277D76AC0];
  v15 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AC0] modifierFlags:0 action:selector];
  [v15 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v15];
  v7 = [MEMORY[0x277D75650] keyCommandWithInput:v6 modifierFlags:0x80000 action:selector];
  [v7 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v7];
  v8 = [MEMORY[0x277D75650] keyCommandWithInput:@"UIKeyInputPageUp" modifierFlags:0 action:selector];
  [v8 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v8];
  v9 = [MEMORY[0x277D75650] keyCommandWithInput:@"UIKeyInputPageDown" modifierFlags:0 action:selector];
  [v9 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v9];
  v10 = [MEMORY[0x277D75650] keyCommandWithInput:@" " modifierFlags:0 action:selector];
  [v10 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v10];
  v11 = [MEMORY[0x277D75650] keyCommandWithInput:@" " modifierFlags:0x20000 action:selector];
  [v11 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v11];
  v12 = [MEMORY[0x277D75650] keyCommandWithInput:v5 modifierFlags:0x100000 action:selector];
  [v12 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v12];
  v13 = [MEMORY[0x277D75650] keyCommandWithInput:v6 modifierFlags:0x100000 action:selector];
  [v12 setWantsPriorityOverSystemBehavior:1];
  [array addObject:v13];

  return array;
}

- (void)handleKeyCommand:(id)command
{
  commandCopy = command;
  input = [commandCopy input];
  modifierFlags = [commandCopy modifierFlags];

  [(NUArticleKeyCommandManager *)self handleKey:input flags:modifierFlags];
}

- (void)handleKey:(id)key flags:(int64_t)flags
{
  flagsCopy = flags;
  keyCopy = key;
  [(NUArticleKeyCommandManager *)self setHasBeenTraversed:1];
  scrollView = [(NUArticleKeyCommandManager *)self scrollView];
  [scrollView adjustedContentInset];
  v8 = v7;
  v10 = v9;

  scrollView2 = [(NUArticleKeyCommandManager *)self scrollView];
  [scrollView2 contentOffset];
  v13 = v12;

  scrollView3 = [(NUArticleKeyCommandManager *)self scrollView];
  [scrollView3 contentSize];
  v16 = v15;

  scrollView4 = [(NUArticleKeyCommandManager *)self scrollView];
  [scrollView4 bounds];
  v30 = v19;
  v31 = v18;
  v21 = v20;
  v23 = v22;

  v24 = (v23 - (v8 + v10)) * 0.8;
  if (*MEMORY[0x277D76B68] == keyCopy)
  {
    if ((flagsCopy & 0x100000) != 0)
    {
      v13 = -v8;
      goto LABEL_19;
    }

    if ((flagsCopy & 0x80000) != 0)
    {
      goto LABEL_11;
    }

    v25 = -100.0;
LABEL_15:
    v13 = v13 + v25;
    goto LABEL_19;
  }

  if (*MEMORY[0x277D76AC0] != keyCopy)
  {
    if (![keyCopy isEqualToString:@"UIKeyInputPageUp"])
    {
      if ([keyCopy isEqualToString:@"UIKeyInputPageDown"])
      {
        goto LABEL_17;
      }

      if (![keyCopy isEqualToString:@" "])
      {
        goto LABEL_19;
      }

      if ((flagsCopy & 0x20000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_11:
    v13 = v13 - v24;
    goto LABEL_19;
  }

  if ((flagsCopy & 0x100000) == 0)
  {
    if ((flagsCopy & 0x80000) != 0)
    {
LABEL_17:
      v13 = v13 + v24;
      goto LABEL_19;
    }

    v25 = 100.0;
    goto LABEL_15;
  }

  v34.origin.y = v30;
  v34.origin.x = v31;
  v34.size.width = v21;
  v34.size.height = v23;
  v13 = v8 + v10 + v16 - CGRectGetHeight(v34);
LABEL_19:
  v35.origin.y = v30;
  v35.origin.x = v31;
  v35.size.width = v21;
  v35.size.height = v23;
  v26 = v8 + v10 + v16 - CGRectGetHeight(v35);
  if (v13 <= -v8)
  {
    v27 = -v8;
  }

  else
  {
    v27 = v13;
  }

  if (v27 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  scrollView5 = [(NUArticleKeyCommandManager *)self scrollView];
  [scrollView5 setContentOffset:1 animated:{0.0, v28}];
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

@end