@interface ICEditingTextView(DragAndDrop)
@end

@implementation ICEditingTextView(DragAndDrop)

+ (void)copyTmpFileToTmpFileInSubDirectory:()DragAndDrop uti:suggestedName:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = v0;
  _os_log_debug_impl(&dword_2151A1000, v1, OS_LOG_TYPE_DEBUG, "Copy file: %@ => %@", v2, 0x16u);
}

+ (void)copyTmpFileToTmpFileInSubDirectory:()DragAndDrop uti:suggestedName:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)textDraggableView:()DragAndDrop dragSessionWillBegin:.cold.1(void *a1)
{
  v1 = [a1 editorController];
  v2 = [v1 note];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v4, v5, "Drag will begin: %@", v6, v7, v8, v9, v10);
}

- (void)textDraggableView:()DragAndDrop dragSessionDidEnd:withOperation:.cold.1(void *a1)
{
  v1 = [a1 editorController];
  v2 = [v1 note];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v4, v5, "Drag did end: %@", v6, v7, v8, v9, v10);
}

- (void)textDroppableView:()DragAndDrop willPerformDrop:.cold.1(void *a1)
{
  v1 = [a1 editorController];
  v2 = [v1 note];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v4, v5, "Will perform drop: %@", v6, v7, v8, v9, v10);
}

- (void)textDroppableView:()DragAndDrop dropSessionDidEnter:.cold.1(void *a1)
{
  v1 = [a1 editorController];
  v2 = [v1 note];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v4, v5, "Drop did enter: %@", v6, v7, v8, v9, v10);
}

- (void)textDroppableView:()DragAndDrop dropSessionDidExit:.cold.1(void *a1)
{
  v1 = [a1 editorController];
  v2 = [v1 note];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v4, v5, "Drop did exit: %@", v6, v7, v8, v9, v10);
}

- (void)textDroppableView:()DragAndDrop dropSessionDidEnd:.cold.1(void *a1)
{
  v1 = [a1 editorController];
  v2 = [v1 note];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v4, v5, "Drop did end: %@", v6, v7, v8, v9, v10);
}

- (void)textPasteConfigurationSupporting:()DragAndDrop transformPasteItem:.cold.1(void *a1)
{
  v1 = [a1 editorController];
  v2 = [v1 note];
  v3 = [v2 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v4, v5, "Transform paste item: %@", v6, v7, v8, v9, v10);
}

- (void)textPasteConfigurationSupporting:()DragAndDrop transformPasteItem:.cold.2(void *a1)
{
  v1 = [a1 registeredTypeIdentifiers];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_2151A1000, v2, v3, "Transform paste item types: %@", v4, v5, v6, v7, v8);
}

- (void)textPasteConfigurationSupporting:()DragAndDrop performPasteOfAttributedString:toRange:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 editorController];
  v4 = [v3 note];
  v5 = [v4 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Perform paste: %@", v6, 0xCu);
}

- (void)textPasteConfigurationSupporting:()DragAndDrop performPasteOfAttributedString:toRange:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2151A1000, v0, OS_LOG_TYPE_DEBUG, "Inserting dropped text begin to range: %@", v1, 0xCu);
}

- (void)textPasteConfigurationSupporting:()DragAndDrop performPasteOfAttributedString:toRange:.cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Inserting dropped text end: %@", &v3, 0xCu);
}

@end