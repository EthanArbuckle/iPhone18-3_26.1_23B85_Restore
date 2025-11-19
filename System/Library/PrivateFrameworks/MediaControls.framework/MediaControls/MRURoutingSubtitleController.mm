@interface MRURoutingSubtitleController
- (MRURoutingSubtitleController)init;
- (MRURoutingSubtitleControllerDelegate)delegate;
- (NSString)text;
- (UIImage)icon;
- (id)description;
- (int64_t)accessory;
- (int64_t)nextAvailableTextState;
- (void)setText:(id)a3 icon:(id)a4 forState:(int64_t)a5 accessory:(int64_t)a6;
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
    v4 = [MEMORY[0x1E695DF90] dictionary];
    storage = v3->_storage;
    v3->_storage = v4;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRURoutingSubtitleController *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p storage=%@ >", v4, self, v5];

  return v6;
}

- (NSString)text
{
  storage = self->_storage;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v4 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v3];
  v5 = [v4 text];
  v6 = [v5 copy];

  return v6;
}

- (UIImage)icon
{
  storage = self->_storage;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v4 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v3];
  v5 = [v4 icon];

  return v5;
}

- (int64_t)accessory
{
  storage = self->_storage;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v4 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v3];
  v5 = [v4 accessory];

  return v5;
}

- (void)setText:(id)a3 icon:(id)a4 forState:(int64_t)a5 accessory:(int64_t)a6
{
  v21 = a3;
  v10 = a4;
  storage = self->_storage;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v13 = [(NSMutableDictionary *)storage objectForKeyedSubscript:v12];

  if ([v21 length])
  {
    v14 = [[MRUSubtitleValue alloc] initWithText:v21 icon:v10 accessory:a6];
    v15 = self->_storage;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [(NSMutableDictionary *)v15 setObject:v14 forKey:v16];
  }

  else
  {
    v17 = self->_storage;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    [(NSMutableDictionary *)v17 removeObjectForKey:v16];
    v14 = 0;
  }

  if (!self->_state && [(MRURoutingSubtitleController *)self hasText])
  {
    [(MRURoutingSubtitleController *)self transitionToNextAvailableState];
  }

  state = self->_state;
  if (state && state == a5 && ([v13 isEqualToSubtitleValue:v14] & 1) == 0)
  {
    v19 = [(MRURoutingSubtitleController *)self delegate];
    v20 = [(MRUSubtitleValue *)v14 text];
    [v19 routingSubtitleStateController:self didUpdateText:v20 icon:v10 accessory:{-[MRUSubtitleValue accessory](v14, "accessory")}];
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