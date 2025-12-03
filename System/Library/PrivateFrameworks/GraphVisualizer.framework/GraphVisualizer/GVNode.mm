@interface GVNode
- (CGPoint)center;
- (CGPoint)origin;
- (CGRect)frame;
- (CGSize)size;
- (GVNode)init;
- (id)description;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setOrigin:(CGPoint)origin;
@end

@implementation GVNode

- (GVNode)init
{
  v3.receiver = self;
  v3.super_class = GVNode;
  result = [(GVNode *)&v3 init];
  if (result)
  {
    *&result->rank = 0u;
    *&result->w = 0u;
    *&result->x = 0u;
    result->inPriority = 0;
    result->outPriority = 0;
  }

  return result;
}

- (CGRect)frame
{
  x = self->x;
  y = self->y;
  w = self->w;
  h = self->h;
  result.size.height = h;
  result.size.width = w;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  if (gvnode_logger_onceToken != -1)
  {
    [GVNode setFrame:];
  }

  v3 = gvnode_logger_logger;
  if (os_log_type_enabled(gvnode_logger_logger, OS_LOG_TYPE_ERROR))
  {
    [(GVNode *)v3 setFrame:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (CGPoint)origin
{
  x = self->x;
  y = self->y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setOrigin:(CGPoint)origin
{
  if (gvnode_logger_onceToken != -1)
  {
    [GVNode setFrame:];
  }

  v3 = gvnode_logger_logger;
  if (os_log_type_enabled(gvnode_logger_logger, OS_LOG_TYPE_ERROR))
  {
    [(GVNode *)v3 setOrigin:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (CGPoint)center
{
  __asm { FMOV            V2.2D, #0.5 }

  v7 = vaddq_f64(*&self->x, vmulq_f64(*&self->w, _Q2));
  v8 = v7.f64[1];
  result.x = v7.f64[0];
  result.y = v8;
  return result;
}

- (void)setCenter:(CGPoint)center
{
  if (gvnode_logger_onceToken != -1)
  {
    [GVNode setFrame:];
  }

  v3 = gvnode_logger_logger;
  if (os_log_type_enabled(gvnode_logger_logger, OS_LOG_TYPE_ERROR))
  {
    [(GVNode *)v3 setCenter:v4, v5, v6, v7, v8, v9, v10];
  }
}

- (CGSize)size
{
  w = self->w;
  h = self->h;
  result.height = h;
  result.width = w;
  return result;
}

- (id)description
{
  if (self->x == 0.0 && self->y == 0.0)
  {
    v3 = &stru_2862C2CB0;
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    [(GVNode *)self center];
    v6 = v5;
    [(GVNode *)self center];
    v3 = [v4 stringWithFormat:@" center=(%.2f, %.2f)", v6, v7];
  }

  v9.receiver = self;
  v9.super_class = GVNode;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ size=(%.2f, %.2f)%@", -[GVNode description](&v9, sel_description), *&self->w, *&self->h, v3];
}

- (void)setFrame:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2507D1000, a1, a3, "%{public}s frame property is read-only.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setOrigin:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2507D1000, a1, a3, "%{public}s origin property is read-only.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setCenter:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_2507D1000, a1, a3, "%{public}s center property is read-only.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end