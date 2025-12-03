@interface MRURoutingSubtitleController
- (MRURoutingSubtitleController)init;
- (MRURoutingSubtitleControllerDelegate)delegate;
- (NSString)text;
- (UIImage)icon;
- (id)description;
- (int64_t)accessory;
- (int64_t)nextAvailableTextState;
- (void)setText:(id)text icon:(id)icon forState:(int64_t)state accessory:(int64_t)accessory;
@end

@implementation MRURoutingSubtitleController

- (MRURoutingSubtitleController)init
{
  v7.receiver = self;
  v7.super_class = MRURoutingSubtitleController;
  v2 = [(MRURoutingSubtitleController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v3->_storage;
    v3->_storage = dictionary;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(MRURoutingSubtitleController *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p storage=%@ >", v4, self, storage];

  return v6;
}

- (NSString)text
{
  storage = self->_storage;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v4 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v3];
  text = [v4 text];
  v6 = [text copy];

  return v6;
}

- (UIImage)icon
{
  storage = self->_storage;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v4 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v3];
  icon = [v4 icon];

  return icon;
}

- (int64_t)accessory
{
  storage = self->_storage;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v4 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v3];
  accessory = [v4 accessory];

  return accessory;
}

- (void)setText:(id)text icon:(id)icon forState:(int64_t)state accessory:(int64_t)accessory
{
  textCopy = text;
  iconCopy = icon;
  storage = self->_storage;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v13 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v12];

  if ([textCopy length])
  {
    v14 = [[MRUSubtitleValue alloc] initWithText:textCopy icon:iconCopy accessory:accessory];
    v15 = self->_storage;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [(NSMutableDictionary *)v15 setObject:v14 forKey:v16];
  }

  else
  {
    v17 = self->_storage;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [(NSMutableDictionary *)v17 removeObjectForKey:v16];
    v14 = 0;
  }

  if (!self->_state && [(MRURoutingSubtitleController *)self hasText])
  {
    [(MRURoutingSubtitleController *)self transitionToNextAvailableState];
  }

  state = self->_state;
  if (state && state == state && ([v13 isEqualToSubtitleValue:v14] & 1) == 0)
  {
    delegate = [(MRURoutingSubtitleController *)self delegate];
    text = [(MRUSubtitleValue *)v14 text];
    [delegate routingSubtitleStateController:self didUpdateText:text icon:iconCopy accessory:{-[MRUSubtitleValue accessory](v14, "accessory")}];
  }
}

- (int64_t)nextAvailableTextState
{
  state = self->_state;
  v4 = state;
  while (1)
  {
    v5 = ((v4 + 1) * 0x2492492492492493uLL) >> 64;
    v4 = v4 + 1 - 7 * ((v5 + ((v4 + 1 - v5) >> 1)) >> 2);
    if (v4 == state)
    {
      break;
    }

    storage = self->_storage;
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v8 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v7];

    if (v8)
    {
      return v4;
    }
  }

  return state;
}

- (MRURoutingSubtitleControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end