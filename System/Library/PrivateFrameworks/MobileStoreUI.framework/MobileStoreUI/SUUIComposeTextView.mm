@interface SUUIComposeTextView
- (void)setPlaceholder:(id)placeholder;
@end

@implementation SUUIComposeTextView

- (void)setPlaceholder:(id)placeholder
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277D740C0];
  v4 = MEMORY[0x277D75348];
  placeholderCopy = placeholder;
  placeholderTextColor = [v4 placeholderTextColor];
  v10[0] = placeholderTextColor;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:placeholderCopy attributes:v7];
  [(SUUIComposeTextView *)self setAttributedPlaceholder:v8];
}

@end